use prokart;

-- calculate total cart cost of a user

select UID as 'UserID', sum(c.Quantity * p.Cost) as 'Total cart cost'
from cart c
join product p on c.PID = p.ProductID
where UID = 2;

-- display orders' details of a user

select concat(u.Fname, ' ', u.Lname) as 'User', OrderID, OrderDate, p.Amount, cast((OrderDate + c.Speed) as date) as 'Arrival Date'
from orders o
join users u on u.UserID = o.UID
join payment p on p.PaymentID = o.PID
join courier c on c.CourierID = o.CoID
where o.UID = 6;

-- order processing queries

select p.ProductID, p.ProductName, c.Quantity
from cart c
join inventory_products i on i.PID = c.PID
join product p on p.ProductID = c.PID
where c.uid = 14 and c.Quantity <= i.Quantity;

insert into payment(amount, uid)
select sum(p.Cost * c.Quantity), 14
from cart c
join inventory_products i on i.PID = c.PID
join product p on p.ProductID = c.PID
where c.uid = 14 and c.Quantity <= i.Quantity
group by c.uid;

update product p
join cart c on c.PID = p.ProductID
join inventory_products i on i.PID = p.ProductID
set p.Quantity_sold = p.Quantity_sold + c.Quantity
where c.UID = 14 and c.Quantity <= i.Quantity;

insert into orders(OrderDate, UID, PID, CoID) 
select curdate(), 14, max(PaymentID), 3
from payment;

insert into product_in_order
select (select max(OrderID) from orders), ProductID
from product
where ProductID in (
	select p.ProductID
	from cart c
	join inventory_products i on i.PID = c.PID
	join product p on p.ProductID = c.PID
	where c.uid = 14 and c.Quantity <= i.Quantity
);

update inventory_products i
join cart c on c.PID = i.PID
set i.Quantity = i.Quantity - c.Quantity
where c.UID = 14 and c.Quantity <= i.Quantity;

-- display products of a category, in given price range, sort by popularity

select ProductID, ProductName, Cost, Quantity_sold
from product
where (cost >= 500 and cost <= 1000) and cid in (
	select CategoryID
    from category
    where CategoryName = "Jewellery"
)
order by Quantity_sold desc;

-- total sales of sellers, sorted highest to lowest

select s.SellerID, s.SellerName as 'Seller', s.Contact, sum(p.Cost * p.Quantity_sold) as 'Total seller sales'
from product p
join seller s on s.SellerID = p.SID
group by p.SID
order by sum(p.Cost * p.Quantity_sold) desc;

-- total sales in a given period

select sum(p.Amount) as 'Total sales'
from payment p
join orders o on p.PaymentID = o.PID
where o.OrderDate between '2022-01-04' and '2022-01-11';

-- total orders per courier

select c.CourierID, c.CourierName as 'Courier', c.Speed, count(OrderID) as 'Total orders'
from orders o
join courier c on c.CourierID = o.CoID
group by o.CoID
order by count(OrderID) desc;

-- add to cart
insert into cart(UID, PID, Quantity) values (1, 3, 2);
insert into cart(UID, PID, Quantity) values (1, 7, 1);

-- empty user cart
delete from cart
where uid = 1;

