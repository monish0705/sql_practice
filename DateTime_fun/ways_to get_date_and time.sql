use SalesDB
go

select 
OrderID,
CreationTime,
'2025-07-13' Hardcoded, -- this will appear same for all column.
GETDATE() today  -- this helps to get today date correctly.
from sales.Orders