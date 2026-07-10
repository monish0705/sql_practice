use MyDatabase
go

--get all the customers along with their orders , including those without orders


SELECT * 
FROM customers as c
LEFT JOIN orders as o
on c.id = o.customer_id


--get all the customers along with their orders , including orders without matching customers


SELECT * 
FROM customers as c
RIGHT JOIN orders as o
on c.id = o.customer_id


--solve same using only left join

SELECT * 
FROM orders as o
LEFT JOIN customers as c
on c.id = o.customer_id


--get all customers and all orders even if thers is no match

SELECT * 
FROM customers as c
FULL JOIN orders as o
on c.id = o.customer_id
