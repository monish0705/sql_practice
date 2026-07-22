use SalesDB
go


--generate the report showing the total sales of each category.
--high if sales is greater than 50
--medium:if sales is between 20 to 50.
--low : if the sales equal or lower than 20 
--sort the result from lower to highest.

select 
category,
SUM(Sales) totalsales
from(
	select 
	OrderID,
	Sales,
	case 
		when Sales > 50 then 'high'
		when Sales >20 then 'medium'
		else 'low'
	end category
	from sales.Orders
)t
group by category
order by totalsales desc


--retrieve the employee details with gender displayed as full text.

 

select 
EmployeeID,
FirstName,
LastName,
Gender,
case 
	when Gender = 'M' then 'male'
	when Gender = 'F' then 'female'
	else 'none'
end genderfulltext
from Sales.Employees


--retrieve customer details  with abbrivated  country code.

select 
	CustomerID,
	FirstName,
	LastName,
	Country,
	case
		when country = 'germany' then 'de'
		when country = 'USA' then 'us'
		else 'none'
	end countryabbr,
	--or

	case country
		when 'germany' then 'de'
		when 'USA' then 'us'
		else 'none'
	end countryabbr2
from Sales.Customers

--SELECT distinct  country 
--from sales.Customers



--find average score of customers and treat null value as 0, and additionally provide details such as customerid and lastname.


select 
CustomerID,
LastName,
Score,
case 
	when Score is null then 0
	else Score
end scoreclean,

avg(case 
		when Score is null then 0
		else Score
	end 
) over() averagescoreclean,

avg(Score) over() averagescore
from Sales.Customers


--count how many times each customer has made an order with sales greated than 30.

select 

CustomerID,

sum(case 
		when Sales >30 then 1
		else 0
	end
	)totalordershighsales,

count(*) totalorders

from Sales.Orders
group by CustomerID

