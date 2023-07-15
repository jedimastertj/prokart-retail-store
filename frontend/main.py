from flask import Flask, render_template, request, flash, redirect, url_for
import mysql.connector

db = mysql.connector.connect(host = "localhost", user = "root", password = "kLiHCfQ0ewYH", database = "prokart")
cursor = db.cursor()
app = Flask(__name__)
app.config['SECRET_KEY'] = "hey12345"
userID = -1
fname = "tanishq"
lname = "jain"

@app.route("/", methods = ['GET', 'POST'])
def login():
    global userID, fname

    if (request.method == 'POST'):
        uid = request.form.get('uid')
        fname = request.form.get('fname').lower().strip()

        cursor.execute("select * from users where UserID = %s and FName = %s;", (uid, fname, ))
        data = cursor.fetchone()
        if (data is not None):
            userID = int(uid)
            flash("Logged in successfully!", category = "success")
            return redirect("/home")
        else:
            flash("Invalid user.", category = "error")
            return render_template("login.html", uid = userID)
    else:
        return render_template("login.html", uid = userID)

@app.route("/home", methods = ['GET', 'POST'])
def home():
    global userID, fname

    if (request.method == 'POST'):
        cursor.execute('''insert into payment(amount, uid)
                        select sum(p.Cost * c.Quantity), %s from cart c
                        join inventory_products i on i.PID = c.PID
                        join product p on p.ProductID = c.PID
                        where c.uid = %s and c.Quantity <= i.Quantity
                        group by c.uid;''', (userID, userID, ))
        db.commit()

        cursor.execute('''delete from cart where uid = %s;''', (userID, ))
        db.commit()
        
        cursor.execute('''select * from (select * from payment order by PaymentID desc limit 10) temp
                        order by paymentID asc;''')
        data1 = cursor.fetchall()

        cursor.execute('''select * from (select * from orders order by orderID desc limit 10) temp
                        order by orderID asc;''')
        data2 = cursor.fetchall()

        cursor.execute('''select * from (select * from product_in_order order by OID desc limit 10) temp
                        order by OID asc;''')
        data3 = cursor.fetchall()

        return render_template("triggers.html", data1 = data1, data2 = data2, data3 = data3, uid = userID)

    else :
        cursor.execute('''select p.ProductID, p.ProductName, c.Quantity from cart c
                        join inventory_products i on i.PID = c.PID
                        join product p on p.ProductID = c.PID
                        where c.uid = %s and c.Quantity <= i.Quantity;''', (userID, ))
        data = cursor.fetchall()
        return render_template("home.html", uid = userID, fname = fname, data = data)

@app.route("/triggers")
def trigger():
    return render_template("triggers.html", uid = userID)

@app.route("/olap")
def olap():
    cursor.execute('''select c.CategoryName, (select if(p.cost <= 1000, "<= 1000", "> 1000")), sum(Quantity_sold)
                    from product p
                    join category c on c.CategoryID = p.cid
                    group by c.CategoryName, (select if(p.cost <= 1000, "<= 1000", "> 1000")) with rollup;''')
    data1 = cursor.fetchall()

    cursor.execute('''select s.SellerName, c.CategoryName, sum(p.Cost * p.Quantity_sold)
                    from product p
                    join seller s on s.SellerID = p.SID
                    join category c on c.CategoryID = p.cid
                    group by s.SellerName, c.CategoryName with rollup
                    order by c.CategoryName, sum(p.Cost * p.Quantity_sold) desc;''')
    data2 = cursor.fetchall()

    cursor.execute('''select u.FName, (select if(month(o.OrderDate) <= 6, "1st half of 2022", "2nd half of 2022")), sum(p.Amount)
                    from orders o
                    join payment p on p.paymentID = o.PID
                    join users u on u.userid = o.uid
                    group by u.FName, (select if(month(o.OrderDate) <= 6, "1st half of 2022", "2nd half of 2022")) with rollup
                    order by (select if(month(o.OrderDate) <= 6, "1st half of 2022", "2nd half of 2022")), sum(p.Amount) desc;''')
    data3 = cursor.fetchall()

    cursor.execute('''select c.CourierName, sum(p.Amount)
                    from orders o
                    join courier c on c.CourierID = o.CoID
                    join payment p on o.PID = p.PaymentID
                    group by c.CourierName with rollup
                    order by sum(p.Amount) desc;''')
    data4 = cursor.fetchall()

    return render_template("olap.html", uid = userID, data1 = data1, data2 = data2, data3 = data3, data4 = data4)

@app.route("/signup", methods = ['GET', 'POST'])
def signup() :
    global userID
    if (request.method == 'POST'):
        fname = request.form.get('fname').lower().strip()
        lname = request.form.get('lname').lower().strip()
        address = request.form.get('address').lower().strip()
        cursor.execute("select max(UserID) from users;")
        id = int(cursor.fetchone()[0]) + 1

        cursor.execute('''insert into users(userid, fname, lname, address)
                       values (%s, %s, %s, %s);''', (id, fname, lname, address))
        db.commit()

        flash("Account created successfully!", category = "success")
        return redirect("/")
    
    else:
        return render_template("signup.html", uid = userID)    

@app.route("/products", methods = ['GET', 'POST'])
def products():
    if (request.method == 'POST'):
        pid = request.form.get('pid')
        quantity = int(request.form.get('quantity'))

        cursor.execute('''select quantity from inventory_products 
                       where pid = %s;''', (pid, ))
        data = cursor.fetchone()
        
        if (data is not None):
            avl = int(data[0])
            if (quantity > avl):
                flash("Quantity demanded more than available.", category = "error")
                return redirect("/home")
            else:
                cursor.execute('''insert into cart(uid, pid, quantity)
                           values (%s, %s, %s);''', (userID, pid, quantity))
                db.commit()

                flash("Product added to cart!", category = "success")
                return redirect("/home")            
        else:
            flash("Invalid product id.", category = "error")
            return redirect("/home")

    else:
        cursor.execute('''select productId, productName, categoryName, cost from product
                       join category on category.categoryId = product.cid;''')
        data = cursor.fetchall()
        return render_template("products.html", data = data, uid = userID)
    
@app.route("/signout")
def signout():
    global userID
    userID = -1
    flash("Signed out.", category = "success")
    return render_template("login.html", uid = userID)

@app.route("/admin", methods = ['GET', 'POST'])
def admin():
    if (request.method == 'POST'):
        aid = request.form.get('id')
        name = request.form.get('name').lower().strip()

        cursor.execute("select * from admins where AdminID = %s and AdminName = %s;", (aid, name, ))
        data = cursor.fetchone()
        if (data is not None):
            flash("Logged in successfully!", category = "success")
            return redirect("/olap")
        else:
            flash("Invalid admin.", category = "error")
            return render_template("admin.html", uid = userID)
    else:
        return render_template("admin.html", uid = userID)

if (__name__ == "__main__"):
    app.run(debug = True)