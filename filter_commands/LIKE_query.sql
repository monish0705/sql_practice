use MyDatabase
go

--find all customers whose first name starts with M

SELECT * 
FROM customers
WHERE first_name LIKE 'M%'


--find all customers whose first name ends with N


SELECT * 
FROM customers
WHERE first_name LIKE '%n'


--find all customers whose first name contains R


SELECT * 
FROM customers
WHERE first_name LIKE '%r%'



--find all customers whose first name contains R at third positin 


SELECT * 
FROM customers
WHERE first_name LIKE '__r%'

