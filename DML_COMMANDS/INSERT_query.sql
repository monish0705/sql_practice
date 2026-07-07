USE MyDatabase
go

INSERT INTO customers 
VALUES (7,'anna','USA',NULL)

SELECT * FROM customers

--insert multiple commands

INSERT INTO customers
VALUES (8,'david','INDIA',950),
(10,'indra','INDIA',650)

--inserting the values in the column order

INSERT INTO customers (id,first_name,country,score)
VALUES (11,'ram','CANADA',460),
(12,'sita','france',780)


--METHOD_2

--copy data from 'customres' table into 'persons'

insert into person(id,person_name,country,phone,birth_name)
select 
id,
first_name,
country,
'unknown',
null
from customers

select * from person