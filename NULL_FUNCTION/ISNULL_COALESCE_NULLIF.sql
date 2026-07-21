use SalesDB
go


--use cases of null

--1.data aggregations


--find the average score of a customers

select 
CustomerID,
score,
--AVG(score) OVER() avgscore,
AVG(ISNULL(score,0)) OVER() avgscore2 
from Sales.Customers

--2.mathematical operation

/*display full name of customer in a single field  by merging their first and last name 
and add 10  bonus points to each customers score.*/

select 
CustomerID,
FirstName + ' ' + COALESCE(LastName,'')  as full_name,
score,
COALESCE(score,0) +10 as scorewithbonus
from Sales.Customers



--3.before joining tables

--4.before sorting the data

--sort the customers  from lowest to highest  scores , with null values appearing last.

select 
CustomerID,
Score
--CASE WHEN Score IS NULL THEN 1 ELSE 0 END flag
from Sales.Customers
order by CASE WHEN Score IS NULL THEN 1 ELSE 0 END ,Score


--NULLIF

--use: preventing error of dividing by zero.

--find the sales price for  each order by  dividing  the sales by the quantity.

select 
OrderID,
Quantity,
Sales,
Sales / NULLIF(Quantity,0) as price
from Sales.Orders