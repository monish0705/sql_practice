use SalesDB
go

--rank orders based on their sales from highest to lowest

select 
OrderID,
ProductID,
Sales,
Row_number() over(order by Sales desc) salesrank_rownumber,
Rank() over(order by Sales desc) salesrank_rank,
dense_rank() over(order by Sales desc) salesrank_denserank
from Sales.Orders



-- find the top highest sales for each product


select * 
from(
select 
OrderID,
ProductID,
Sales,
row_number() over(partition by ProductID order by Sales desc) topSales
from Sales.Orders
)t where topSales = 1


--find the lowest 2 customers based on their totsl sales.


select *
from(
	select 

		CustomerID,

		sum(Sales) totalsales,
		row_number() over(order by sum(Sales)) rank_ofsales
	from Sales.Orders
	group by CustomerID
	)t where rank_ofsales <=2


--assign the unique id to rows of orderarchieve

SELECT
    ROW_NUMBER() OVER (ORDER BY OrderID, OrderDate) AS UniqueID,
    *
FROM Sales.OrdersArchive;

--Identify Duplicates: Identify Duplicate Rows in 'Order Archive' and return a clean result without any duplicates

SELECT *
FROM (
    SELECT
        ROW_NUMBER() OVER (PARTITION BY OrderID ORDER BY CreationTime DESC) AS rn,
        *
    FROM Sales.OrdersArchive
) AS UniqueOrdersArchive
WHERE rn = 1;


--ntile
-- Divide Orders into Groups Based on Sales

SELECT 
    OrderID,
    Sales,
    NTILE(1) OVER (ORDER BY Sales) AS OneBucket,
    NTILE(2) OVER (ORDER BY Sales) AS TwoBuckets,
    NTILE(3) OVER (ORDER BY Sales) AS ThreeBuckets,
    NTILE(4) OVER (ORDER BY Sales) AS FourBuckets,
    NTILE(2) OVER (PARTITION BY ProductID ORDER BY Sales) AS TwoBucketByProducts
FROM Sales.Orders;


--Segment all Orders into 3 Categories: High, Medium, and Low Sales.
select *,
case
when buckets =1 then 'high'
when buckets = 2 then 'medium'
when buckets =3 then 'high'
end SalesSegmentation
from(

select 
OrderID,
Sales,
ntile(3) over(order by Sales) buckets
from Sales.Orders
)t

 --Divide Orders into Groups for Processing

SELECT 
    NTILE(5) OVER (ORDER BY OrderID) AS Buckets,
    *
FROM Sales.Orders;


--percentage based ranking

--CUME_DIST
--Find Products that Fall Within the Highest 40% of the Prices
select 
Product,
Price,
DistRank,
concat(DistRank *100 ,'%' ) as DistperRank
from(
SELECT
        Product,
        Price,
        CUME_DIST() OVER (ORDER BY Price DESC) AS DistRank
    FROM Sales.Products
    )AS PriceDistribution 
    where DistRank <= 0.4