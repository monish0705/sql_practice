 use MyDatabase 
go 

--adding the new column called email to the person table
ALTER TABLE person
ADD email VARCHAR(50) NOT NULL

SELECT * FROM person

--remove the column phone from the person table

ALTER TABLE person
DROP COLUMN phone

select * from person


--drop the table person 

DROP TABLE person