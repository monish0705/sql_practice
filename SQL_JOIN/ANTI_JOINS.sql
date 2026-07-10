use MyDatabase
go

--get all customers who haven't placed any order


select * 
FROM customers as c 
LEFT JOIN orders as o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL

--get all orders without matching customers(using left join)


select * 
FROM  orders as o
LEFT JOIN customers as c
ON c.id = o.customer_id
WHERE c.id IS NULL


-- find  customers without order  and orders without customers

select * 
from customers	as c
full join orders as o
on c.id = o.customer_id
where c.id is null or o.customer_id IS NULL 


--GET ALL CUSTOMERS ALONG WITH THEIR ORDERS BUT ONLY FOR CUSTOMERS WHO HAVE PLACED AN ORDER (WITHOUT USING INNER JOIN)

select * 
from customers	as c
LEFT join orders as o
on c.id = o.customer_id
where o.customer_id is NOT null 


--GENERATE  ALL POSSIBLE  COMBINATION ON CUSTOMRES AND ORDERS

select * 
from customers
cross join orders