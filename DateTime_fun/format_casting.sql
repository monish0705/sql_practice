use SalesDB
go


select 
OrderID,
CreationTime,
FORMAT(CreationTime,'dd')dd,
FORMAT(CreationTime,'ddd')ddd,
FORMAT(CreationTime,'dddd')dddd,

FORMAT(CreationTime,'MM') MM,
FORMAT(CreationTime,'MMM') MMM,
FORMAT(CreationTime,'MMMM') MMMM,

FORMAT(CreationTime,'MM-dd-yyyy') USA
FROM Sales.Orders



---show creationtime in following format : day wed jan Q1 2025 12:34:56 PM

select 
OrderID,
CreationTime,
'Day '+ FORMAT(CreationTime, 'ddd MMM') + 
' Q'+DATENAME(QUARTER,CreationTime) + 
FORMAT(CreationTime, ' yyy hhh:mm:ss tt') as customtype
from Sales.Orders

--data aggregator

select
format(OrderDate,'MMM yy') orderdate,
count(*)
from sales.Orders
group by format(OrderDate,'MMM yy')


-- convert

select 
/* CONVERT(INT ,'123') as [string to int convert],
CONVERT(date ,'12-3-2025') as [string to date convert],*/

CreationTime,
convert(date , CreationTime)  as [datetime to date  convert],
convert(VARCHAR , CreationTime , 32) as [usa std:32],
convert(VARCHAR , CreationTime , 34) as [euro std:34]
from  Sales.Orders

--cast 

select 
cast('123' as INT) as [string to int ],
cast('12-3-2025' AS DATE) as [string to date],
cast(123 as VARCHAR) as [INT to STRING],
cast('12-3-2025' AS DATETIME) as [string to datetime],
CreationTime,
cast(CreationTime as date) as [Datetime to  Date]
From Sales.Orders


