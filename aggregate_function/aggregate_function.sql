use SalesDB
go

--find the total number of orders

select 
count(OrderID) as total_nr_orders
from Sales.Orders


--find total sales of all orders.

select 
sum(Sales) as total_sales
from Sales.Orders

--find the average sales of all orders
select 
avg(Sales) as average_orders
from Sales.Orders


--find the highest  sales o fo all orders.

select 
max(Sales) as highest_sales_orders
from Sales.Orders


--find the lowest  sales o fo all orders.

select 
min(Sales) as lowest_sales_orders
from Sales.Orders

