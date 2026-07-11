use SalesDB
go 

--retrieve first two character of each first name.

select
FirstName,
LEFT(FirstName,2) first_2_char
FROM sales.Customers


--retrieve last two character of each first name.

select
FirstName,
RIGHT(FirstName,2) last_2_char
FROM sales.Customers


--retrieve customers first name after removing first character
SELECT
FirstName,
SUBSTRING(FirstName,2,len(FirstName)) substr_name
FROM sales.Customers