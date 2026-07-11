use SalesDB
go 

--concatenate first name  and country into one column



select 
FirstName,
Country,
concat(FirstName,' - ', Country) as name_country
from sales.Customers



--convert the customer firt name to upper case

select
FirstName,
UPPER(FirstName) as upper_case
FROM sales.Customers


--find customer whose  firstname conatins the leading or trailing space

select 
FirstName,
len(FirstName)  len_name,
len(TRIM(FirstName))  trim_len_name,
len(FirstName) - len(TRIM(FirstName))  flag
from sales.Customers
where len(FirstName) != len(TRIM(FirstName))
--where FirstName != trim(FirstName)



--remove the - from the phone number

select
'123-456-7890' as phone,
replace('123-456-7890' ,'-',' ') as clean_phone

--replace .txt extension to .csv

select
'hello.txt' text_file,
replace('hello.txt','.txt','.csv') csv_file