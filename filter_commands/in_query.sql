use MyDatabase
go


--retrieve all customers  from either  germany or usa
SELECT * 
FROM customers
WHERE country IN ('germany','usa')


SELECT * 
FROM customers
WHERE country IN ('germany','usa','france','canada')