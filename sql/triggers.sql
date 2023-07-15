delimiter $$
create trigger add_order 
after insert on payment
for each row
begin
	insert into orders(OrderDate, UID, PID, CoID) 
	select curdate(), new.UID, max(PaymentID), 3
	from payment;
end$$
delimiter ;

delimiter $$
create trigger add_product_in_order
after insert on payment
for each row
begin
	insert into product_in_order
	select (select max(OrderID) from orders), ProductID
	from product
	where ProductID in (
		select p.ProductID
		from cart c
		join inventory_products i on i.PID = c.PID
		join product p on p.ProductID = c.PID
		where c.uid = new.uid and c.Quantity <= i.Quantity
	);
end$$
delimiter ;

-- delete from payment where paymentID > 80;
-- delete from orders where orderid > 80;
-- delete from product_in_order where oid > 80;

