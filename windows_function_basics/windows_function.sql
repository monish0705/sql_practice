use SalesDB
go

--find total sales across all orders.

select 
sum(Sales) totalsales
from Sales.Orders

--find the total  sales for each product.

select 
ProductID,
sum(Sales) totalsales
from Sales.Orders
group by ProductID

--find the total sales for each product and additionaly provide details such order id and order date.

 select 
 OrderID,
 OrderDate,
 ProductID,
 sum(Sales) over(partition by ProductID) totalsalesbyproduct
 from Sales.Orders

 --here we cannot use group by function so we are using window function over()