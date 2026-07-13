use SalesDB
go 

--DATEADD
select 
OrderID,
OrderDate,
DATEADD(day,-10,OrderDate) as ten_days_befor,
DATEADD(month,3,OrderDate) as three_months_later

from Sales.Orders


--DATEDIFF

--Calculate the age of employees
select 
EmployeeID,
BirthDate,
DATEDIFF(year, BirthDate, GETDATE()) as age
from Sales.Employees 


-- find the average shipping  duration  in days  for each month

select 
Month(OrderDate) as OrderDate,
AVG(DATEDIFF(day, OrderDate, ShipDate)) as avgdiff
from Sales.Orders
group by Month(OrderDate) 



--find the number of days  between each order and previous order.

-- we LAG() to get acces to previous record.
select
OrderDate  currentOrderDate,
LAG(OrderDate) OVER (ORDER BY OrderDate) previousOrderDate,
DATEDIFF(day, LAG(OrderDate) OVER (ORDER BY OrderDate),OrderDate) nofday
from Sales.Orders


--isdate

SELECT

OrderDate,
ISDATE(OrderDate),
CASE WHEN ISDATE(OrderDate) = 1  THEN Cast(OrderDate as date)
END newOrderdate
from 
(
	select '2025-08-20' as OrderDate union
	select '2025-08-21' union
	select '2025-07-30' union
	select '2025-09'
)t