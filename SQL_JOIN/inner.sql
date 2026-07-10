use MyDatabase
go



-- get all  customers along with their order but only customers who have placed an order
SELECT 
customers.id,
customers.first_name,
orders.order_id,
orders.order_date,
orders.sales
FROM customers 
INNER JOIN orders
on customers.id = orders.customer_id


--OR

SELECT 
c.id,
c.first_name,
o.order_id,
o.order_date,
o.sales
FROM customers AS c 
INNER JOIN orders AS o
on c.id = o.customer_id

