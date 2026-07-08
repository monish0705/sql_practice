use MyDatabase
go

-- change the score of id 7 to 0 
UPDATE customers
SET score =0
WHERE id=7

select * from customers


--change score of the customer with id 10  to 0 and update the country to usa


UPDATE customers
SET score=0,
country= 'usa'
WHERE id = 10


-- update customers score to 0 for all null score
UPDATE customers
set score = 0
where score is null

