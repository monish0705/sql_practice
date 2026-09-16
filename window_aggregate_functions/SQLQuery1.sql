use SalesDB
go

--find the total number orders
--find total number of orders  for each customers
--additionally provide the details like orderid , order date

select 
OrderID,
OrderDate,
CustomerID,
count(*) over() totalorders,
count(*) over(partition by CustomerID) orderofeachcustomer
from Sales.Orders


--find total number of customers
--find the total number of score for a customer
--additionally provide all customer details

select 
FirstName,
LastName,
Country,
Score,
count(*) over() totalcusto,
count(Score) over() totalscore
from Sales.Customers

--check whether table order conatins any duplicates row

select 
OrderID,
count(*) over(partition by OrderID) checkdup
from Sales.Orders



--identify duplicates rows to improve the data quality.
select 
*
from(
	select 
	OrderID,
	count(*) over(partition by OrderID) checkpk
	from Sales.OrdersArchive
	)t where checkpk > 1

