use SalesDB
go

--identify the customers who have no scores 

select *
from Sales.Customers
where score is null

--list all customers who have scores
select *
from Sales.Customers
where score is not null



--list all details of customers who have not placed any orders

select 
c.*,
o.OrderID
from Sales.Customers as c
Left join Sales.Orders as o
on c.CustomerID = o.CustomerID
where o.CustomerID is null    -- or  where o.orderid is null