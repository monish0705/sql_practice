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


 select
 OrderID,
 OrderDate,
 OrderStatus,
 Sales,
 sum(Sales) over(partition by OrderStatus Order by OrderDate
 rows between current row and 2 following) totalsales
 from Sales.Orders


 -- default frame clause : rows between unbounded preceding and current row

 select
 OrderID,
 OrderDate,
 OrderStatus,
 Sales,
 sum(Sales) over(partition by OrderStatus Order by OrderDate) totalsales
 from Sales.Orders

 --PART TO WHOLE COMPARISION

 --find the percentage contribution of each product sales to total sales.

 select 
 OrderID,
 ProductID,
 Sales,
 sum(Sales) over() totalsales,
 round(cast (Sales  as float)/  sum(Sales) over() *100 ,2) perofeachsales
 from Sales.Orders



 --find the avg score of customers
 select 
 CustomerID,
 LastName,
 Score,
 AVG(Coalesce (Score,0)) over() avgscore
 from Sales.Customers


 --find all orders where sales are higher  than the average sales acrosss all orders.

 select *
 from(
	 select
	 OrderID,
	 ProductID,
	 Sales,
	 avg(sales) over() avgsales

	 from Sales.Orders
	 )t where Sales > avgsales    -- window function cannot be used in where clause 




--find the employes who have highest salaries.


select *
from(
	select *,
	max(Salary) over() highestsalary
	from Sales.Employees
	)t where Salary = highestsalary



--find the deviation of each sales from the minimum and maximum sales 

select 
OrderID,
OrderDate,
ProductID,
Sales,
Max(Sales) over () maxsales,
Min(Sales) over() minsales,
Sales - Min(Sales) over() deviationOverMin,
max(Sales) over() - Sales  deviationOverMax
from Sales.Orders

--calculate moving average  of sales for each product over the time , including the next order.



select 
OrderID,
OrderDate,
ProductID,
Sales,
avg(Sales) over(partition by ProductID order by OrderDate) avgSales,
avg(Sales) over(partition by ProductID order by OrderDate rows between current row and 1 following ) avgSalesOverTime
from Sales.Orders
