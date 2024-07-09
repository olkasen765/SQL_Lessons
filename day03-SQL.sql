--DAY 03---


CREATE TABLE new_employees(
	id CHAR (5) PRIMARY KEY,
	name VARCHAR (40) UNIQUE,
	salary INT NOT NULL,
	start_date DATE
);


INSERT INTO new_employees VALUES ('1002', 'Donatello', 12000, '2018-04-14');
INSERT INTO new_employees VALUES ('1003', null, 5000, '2018-04-14');
INSERT INTO new_employees VALUES ('1004', 'Donatello', 5000, '2020-04-14'); --This will be error bcs same name.....
INSERT INTO new_employees VALUES ('1005', 'Michael Angelo', 11000, '2018-04-14');
INSERT INTO new_employees VALUES ('1006', 'Leonardo', null, '2019-03-24'); --error because salary can not have NULL....
INSERT INTO new_employees VALUES ('1007', 'Raphael', '', '2022-11-23');   --Error because wrong data type used.....
INSERT INTO new_employees VALUES ('', 'April', 8000, '2022-04-14'); --there is no error because empty is string data and it is a value....
INSERT INTO new_employees VALUES ('', 'Miss April', 10000, '2023-06-19'); --error because empty value will be duplicate.....
INSERT INTO new_employees VALUES ('1002', 'Splinter', 12000, '2024-03-14');  -- duplicate value for id...
INSERT INTO new_employees VALUES (null, 'Fred', 14000, '2022-05-16'); --error, it can not be null
INSERT INTO new_employees VALUES ('1008', 'Barnie', 10000, '2023-11-26');
INSERT INTO new_employees VALUES ('1009', 'Wilma', 11000, '2023-11-30');
INSERT INTO new_employees VALUES ('1010', 'Betty', 13000, '2023-09-24');


SELECT * FROM new_employees;




CREATE TABLE addresses(
	address_id CHAR (5),
	dist VARCHAR (30),
	street VARCHAR (20),
	city VARCHAR (20),
	CONSTRAINT add_fk FOREIGN KEY (address_id) REFERENCES new_employees (id)
);


INSERT INTO addresses VALUES ('1003', 'Ninja Dist', '40.Cad.', 'Washington');
INSERT INTO addresses VALUES ('1003', 'Kaya Dist', '50.Cad.', 'Ankara');
INSERT INTO addresses VALUES ('1002', 'Tas Dist', '30.Cad.', 'Konya');
INSERT INTO addresses VALUES ('1012', 'Tas Sok', '30.Cad.', 'Konya'); -- there is no 1012 in parent table(column which has primary key)
INSERT INTO addresses VALUES (Null, 'Tas Sok', '23.Cad.', 'Bursa');  -- we can add null value in the column which has foreign key....
INSERT INTO addresses VALUES (Null, 'Ninja Dist', '40.Cad.', 'Florida');
INSERT INTO addresses VALUES ('1005', 'DisneyLand', '30.Cad.', 'Florida');


SELECT * FROM addresses;


--How to get specific data 

--From new_employees table display the name who is get salary higher than 8000;

SELECT * 
FROM new_employees
WHERE salary> 8000;


--From new_employess table display the name who is get salary 5000....
SELECT *
FROM new_employees
WHERE salary = 5000;

--From new_employes table display only id which is gettig salary 13000

SELECT id 
FROM new_employees
WHERE salary = 13000;


--FROM addresses table display the record whose is 1005 id AND city Washington....
SELECT *
FROM addresses
WHERE address_id = '1003' AND city = 'Washington';

--FROM new_employees table display the record who is getting salary less than 10000;
SELECT *
FROM new_employees
WHERE salary < 10000;


--From adresses table display the record where city is Konya or Bursa;

SELECT * 
FROM addresses
WHERE city = 'Konya' OR  city = 'Bursa';


--From adresses table display the record where city is Konya or Istanbul....

SELECT city FROM addresses 
WHERE city = 'Konya' OR city = 'Istanbul';




SELECT * FROM new_employees;
SELECT * FROM addresses;

CREATE TABLE new_students(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR (30),
	last_name VARCHAR (30),
	exam_score INT
);


INSERT INTO new_students (first_name, last_name, exam_score) VALUES 
	('Tom', 'Hanks', 85),
	('Keira', 'Knightly', 92),
	('Lenardo', 'Dicaprio', 78),
	('Julia', 'Roberts', 88),
	('Denzel', 'Washington', 95),
	('Benedict', 'Cumberbatch', 88),
	('Brad', 'Pitt', 91),
	('Russel', 'Crowe', 89),
	('Emma', 'Watson', 87),
	('Judy', 'Dench', 97);
	
	
SELECT * FROM new_students;



-- DELETE FROM-----

--DELETE is DML (Data Manupulation Language)....

-- You can not use DELETE keyword to remove structure in the table.....


-- From new_students table delete the record whose first name 'Lenardo'
DELETE
FROM new_students
WHERE first_name = 'Lenardo';


--From new_students table delete the record who get 87 score....
DELETE
FROM new_students
WHERE exam_score = 87;


--From new_students table delete the record who has id 7...

DELETE
FROM new_students
WHERE id = 7;


-- TRUNCATE KEYWORD ---

--Truncate (hard) vs DELETE (soft)

-- If you use TRUNCATE keyword you can not revoke data...
--But if you DELETE keyword you can revoke data.....

--BOTH are used to remove data from tables...

--TRUNCATE IS DDL BUT DELETE IS DML....
--with DELETE, We can use conditions to filter our query but with TRUNCATE we can not use conditions....



--DELETE ALL RECORDS from new_students; use TRUNCATE

TRUNCATE  -- DELETE ALL RECORDS IN THE TABLE AND YOU CAN NOT BRING THE DATA ON YOUR QUERY TOOL....
TABLE new_students;



SELECT * FROM new_students;

DROP TABLE new_students;  --DROP KEYWORD DELETE STRUCTURE OF TABLE.....