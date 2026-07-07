-- CREATE NEW TABLE CALLED PERSON WITH COLUMNS: id , person name, birth_date, and phone

CREATE TABLE person(
id int NOT NULL,
person_name VARCHAR(50) NOT NULL,
birth_date DATE,
phone VARCHAR(15) NOT NULL,
CONSTRAINT pk_person PRIMARY KEY(id)
)
SELECT * from  person