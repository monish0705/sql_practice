/* USINF SALES DB , retrieve  a list of all  orders , 
along with related  customers,  product , and employee details .
for each order, dispaly :
order id, customer name  , product name, sales, price, sale person name*/

use SalesDB
go



select 
o.OrderID,
c.FirstName as customer_name,
p.Product as product_name,
o.Sales,
p.Price,
e.FirstName as employee_name

from sales.orders as o
left join sales.Customers as c
on o.CustomerID = c.CustomerID
left join sales.Products as p
on o.ProductID = p.ProductID
left join sales.Employees as e
on o.salesPersonID = e.EmployeeID


