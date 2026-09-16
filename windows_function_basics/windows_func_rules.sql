use SalesDB
go


-- rule 1 
select
 OrderID,
 OrderDate,
 OrderStatus,
 Sales,
 sum(Sales) over(partition by OrderStatus Order by OrderDate) totalsales
 from Sales.Orders
 order by sum(Sales) over(partition by OrderStatus Order by OrderDate) desc

 --rule 2 nesting of window function is not allowed
 --rule 3 dql executes window function after where clause

 --rule 4 window funtion can used together with group by in same query if same column are used.

 --rank the customers based on their total sales

 select
 OrderID,
 CustomerID,
 Sales,
 sum(Sales) over (partition by CustomerID) totalsales
 from Sales.Orders
 order by totalsales



 select
 
 CustomerID,
 sum(sales) totalsales,

 rank() over(order by  sum(sales) desc) topcus
 from sales.Orders
 group by CustomerID


