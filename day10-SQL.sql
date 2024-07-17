
------- DAY 10 --------

CREATE TABLE random (
	id VARCHAR (10),
	name VARCHAR (20),
	salary INT,
	address VARCHAR (60)

);

INSERT INTO random VALUES ('3', 'Tom', 9000, '23R, FL, US');
INSERT INTO random VALUES ('8', 'Ali', 8800, '65B, TX, US');
INSERT INTO random VALUES ('24', 'John', 9900, '21M, AZ, US');


-- Change the data type of salary to Real

ALTER TABLE random
	ALTER COLUMN salary TYPE REAL USING salary :: real;


-- Change data type of salary column to VARCHAR

ALTER TABLE random
	ALTER COLUMN salary TYPE VARCHAR;


-- Change data type of address column to int ....

ALTER TABLE random
	ALTER COLUMN address TYPE INT;

-- Forcing to INT

ALTER TABLE random
	ALTER COLUMN address TYPE INT USING address:: INT;

ALTER TABLE random
	ALTER COLUMN id TYPE INT USING ID:: INT;


SELECT * FROM random;


------- HOW TO MODIFY CONSTRAINTS ---------------------------

CREATE TABLE it_employees (
  id CHAR(9),
  name VARCHAR (30),
  state VARCHAR (20),
  company VARCHAR (20),
  number_of_employees numeric (5)
);

INSERT INTO it_employees VALUES(123456789, 'John Walker', 'Florida', 'IBM', 34500);
INSERT INTO it_employees VALUES(456789012, 'Veli Han', 'Arizona', 'GOOGLE', 90000);
INSERT INTO it_employees VALUES(234567890, 'Brad Pitt', 'Florida', 'APPLE', 45500);
INSERT INTO it_employees VALUES(345678901, 'Eddie Murphy', 'Texas', 'IBM', 23700);
INSERT INTO it_employees VALUES(567890123, 'Yusuf Arturk', 'Washington', 'APPLE', 45500);
INSERT INTO it_employees VALUES(589670123, 'Tuba Omar', 'Texas', 'MICROSOFT', 60000);
INSERT INTO it_employees VALUES(476589012, 'Brad Pitt', 'Texas', 'GOOGLE', 90000);
INSERT INTO it_employees VALUES(623456710, 'Mark Stone', 'Pennsylvania', 'IBM', 23700);
INSERT INTO it_employees VALUES(123456710, 'Ali Can', 'Pennsylvania', 'IBM', 25700);


SELECT * FROM it_employees;


-- Add a column name_of_ceo with data type VARCHAR to the it_employees table ....

ALTER TABLE it_employees
ADD COLUMN name_of_ceo VARCHAR; 

-- ADD CONSTRAINT 'NOT NULL' ....

ALTER TABLE it_employees
ALTER COLUMN name_of_ceo SET NOT NULL; 

-- 1st way

UPDATE it_employees
	SET name_of_ceo = 'Steve Job'
	WHERE name_of_ceo IS NULL;

-- HW USE EXISTS ....


-- ADD constraint NOT NULL to number_of_employees

ALTER TABLE it_employees
	ALTER COLUMN number_of_employees SET NOT NULL;


-- Add a new value in company field to check if our constraints are working or not ....

INSERT INTO it_employees (company) VALUES ('ORACLE');

INSERT INTO it_employees (company, number_of_employees, name_of_ceo) VALUES ('BMW', 15000, 'Walter White');


-- Add UNIQUE CONSTRAINT TO ID FIELD ...

ALTER TABLE it_employees
ADD CONSTRAINT id_unique UNIQUE (id);


-- Add value '123456789' to id where company is BMW

UPDATE it_employees
	SET id = '123456789'
	WHERE company = 'BMW';

UPDATE it_employees
	SET id = '233456789'
	WHERE company = 'BMW';


--------- MODIFY SIZE --------------------

-- Size means the number of characters allowed in a field ....


-- ADD a coloumn employee_address with string data type and size 5 ....

ALTER TABLE employees1
ADD COLUMN employee_address VARCHAR (5); 


-- add values

INSERT INTO employees1 VALUES (17, 'Melik', 'Cruz', 'US');

-- increase size of the column employees_address to 10; 

ALTER TABLE employees1 
	ALTER COLUMN employee_address TYPE VARCHAR (10);

-- Add value

INSERT INTO employees1 VALUES (22, 'Christiano', 'Ronaldo', 'Texas 24U');

-- DECREASE the size of the column employee_address to 5 ....

ALTER TABLE employees1 
	ALTER COLUMN employee_address TYPE VARCHAR (5); -- You can not decrease the size because employee_address has value which is more than 5 characters

UPDATE employees1
	SET employee_address = 'a'
	WHERE LENGTH(employee_address) > 5;


--before decrease the size, update the data....

SELECT * FROM employees1;
SELECT * FROM it_employees;










