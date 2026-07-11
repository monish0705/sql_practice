use SalesDB
go 

--combine data from employee  and customers into one table

Select 

FirstName, 
LastName
from sales.Customers

UNION ALL

select 

FirstName,
LastName

from sales.Employees


--find employees who are not customers at the same time.

Select 
FirstName, 
LastName
from sales.Employees

EXCEPT

select 
FirstName,
LastName
from sales.Customers



--FIND  the employees , who are  also customers

Select 
FirstName, 
LastName
from sales.Employees
INTERSECT

select 
FirstName,
LastName
from sales.Customers