select c.CategoryName, (select if(p.cost <= 1000, "<= 1000", "> 1000")), sum(Quantity_sold)
from product p
join category c on c.CategoryID = p.cid
group by c.CategoryName, (select if(p.cost <= 1000, "<= 1000", "> 1000")) with rollup;

select s.SellerName, c.CategoryName, sum(p.Cost * p.Quantity_sold)
from product p
join seller s on s.SellerID = p.SID
join category c on c.CategoryID = p.cid
group by s.SellerName, c.CategoryName with rollup
order by c.CategoryName, sum(p.Cost * p.Quantity_sold) desc;

select u.FName, (select if(month(o.OrderDate) <= 6, "1st half of 2022", "2nd half of 2022")), sum(p.Amount)
from orders o
join payment p on p.paymentID = o.PID
join users u on u.userid = o.uid
group by u.FName, (select if(month(o.OrderDate) <= 6, "1st half of 2022", "2nd half of 2022")) with rollup
order by (select if(month(o.OrderDate) <= 6, "1st half of 2022", "2nd half of 2022")), sum(p.Amount) desc;

select c.CourierName, sum(p.Amount)
from orders o
join courier c on c.CourierID = o.CoID
join payment p on o.PID = p.PaymentID
group by c.CourierName with rollup
order by sum(p.Amount) desc;



