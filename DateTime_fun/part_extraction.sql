-- retrieve the year month and day from creationtime  column

select 
OrderID,
CreationTime,
year(CreationTime) as year,
month(CreationTime) as month,
DAY(CreationTime) as day
from sales.Orders

--use datepart
select 
OrderID,
CreationTime,
DATEPART(YEAR , CreationTime) AS YEAR_DP,
DATEPART(MONTH , CreationTime) AS MONTH_DP,
DATEPART(DAY , CreationTime) AS DAY_DP,  -- STORED IN INT
DATEPART(WEEK , CreationTime) AS WEEK_DP,
DATEPART(QUARTER , CreationTime) AS QUARTER_DP
from sales.Orders


--DATENAME

select 
OrderID,
CreationTime,
DATENAME(MONTH , CreationTime) AS MONTH_DN,
DATENAME(WEEKDAY , CreationTime) AS WEEKDAY_DN,
DATENAME(DAY , CreationTime) AS DAY_DN  --- SAME AS DATEPART BUT IN DATENAME IT IS STORED IN STRING
from sales.Orders

--DATETRUNC
select 
OrderID,
CreationTime,
DATETRUNC(MINUTE, CreationTime) AS MINUTE_DN, -- sotres up to min and remaing will be turncated
DATETRUNC(DAY , CreationTime) AS DAY_DN --stores up to day and remaing will be turncated
from sales.Orders

--app
select 
datetrunc(year,CreationTime) ,
count(*)
from sales.Orders
group by datetrunc(year,CreationTime)

--eomonth

select 
CreationTime,
EOMONTH(CreationTime) endofmonth, ---end of the month

datetrunc(month, CreationTime) startofmonth -- start of month
from sales.Orders



----how many orders are placed each year?

select 
year(OrderDate),
count(*) numoforders
from sales.Orders
group by year(OrderDate)


--how many orders were placed each month

select
datename(month, OrderDate) as orderdate,
count(*) numoforder
from sales.Orders
group by datename(month, OrderDate)

--show all all orders that were placed during the month february.
select 
* 
from sales.Orders
where month(OrderDate) = 2
