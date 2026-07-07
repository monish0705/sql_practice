use MyDatabase
go

-- select
select 
first_name,
country, 
score

from customers
where country = 'germany'

-- Retrieve the name and country of customers from Germany
SELECT
    first_name,
    country
FROM customers
WHERE country = 'Germany'
