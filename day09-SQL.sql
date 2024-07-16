
-------- DAY 09 ----------

-- HW from company_employees table
--Select employee names which start with ‘E’
--Select employee names which ends with ‘e’
--Select employee names which starts with ‘B’ and ends with ‘t’
--Select employee names which has ‘a’ in any position
--Select employee names which has ‘e’ and ‘r’ in any position
--Select state whose second character is ‘e’ and fourth is ‘n’
--Select state whose second last character is ‘i’
--Select ‘states’ whose second character is ‘e’ and it has at least 6 characters
--Select state which has ‘i’ in any position after second character



--Select employee names which start with ‘E’

SELECT *
	FROM company_employees
	WHERE name LIKE 'E%';
-- WHERE name ILIKE 'e%';


--Select employee names which ends with ‘e’

SELECT *
	FROM company_employees
	WHERE name LIKE '%e';


--Select employee names which starts with ‘B’ and ends with ‘t’
SELECT *
	FROM company_employees
	WHERE name ILIKE 'B%t';

--Select employee names which has ‘a’ in any position
SELECT *
	FROM company_employees
	WHERE name LIKE '%a%';

--Select employee names which has ‘e’ and ‘r’ in any position
SELECT *
	FROM company_employees
	WHERE name LIKE '%e%r%' OR name LIKE '%r%e%';

--Select state whose second character is ‘e’ and fourth is ‘n’
SELECT *
	FROM company_employees
--	WHERE state LIKE '_e%' AND state LIKE '___n%';
	WHERE state LIKE '_e%_n%';
	
--Select state whose second last character is ‘i’
SELECT *
	FROM company_employees
	WHERE state LIKE '%i_';

--Select ‘states’ whose second character is ‘e’ and it has at least 6 characters
SELECT *
	FROM company_employees
	WHERE state LIKE '_e____%';

--Select state which has ‘i’ in any position after second character
SELECT *
	FROM company_employees
	WHERE state LIKE '__%i%';


SELECT * FROM company_employees;



CREATE TABLE alice_books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100)
);



INSERT INTO alice_books (book_id, book_title)
VALUES
    (1, 'The Great Gatsby'),
    (2, 'To Kill a Mockingbird'),
    (3, 'Pride and Prejudice'),
    (4, 'Jane Eyre'),
    (5, 'Animal Farm');



CREATE TABLE bob_books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100)
);

INSERT INTO bob_books (book_id, book_title)
VALUES
    (2, 'To Kill a Mockingbird'),
    (4, '1984'),
    (6, 'The Catcher in the Rye'),
    (5, 'Animal Farm');



CREATE TABLE john_books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100)
);


INSERT INTO john_books (book_id, book_title)
VALUES
    (9, 'Psychology of Money'),
    (12, 'Political Economy'),
    (7, 'Computational Thinking'),
    (5, 'Animal Farm');


-------------------------------------
SELECT * FROM alice_books;
SELECT * FROM bob_books;
SELECT * FROM john_books;
--------------------------------------------

--Find the title of books read by ALICE.....

SELECT book_title
FROM alice_books;


--Find the title of books read by BOB.....


SELECT book_title
FROM bob_books;


--Create a list of all the books read by both Alice and Bob (without duplicates)

SELECT book_title
FROM alice_books


UNION

SELECT book_title
FROM bob_books;




-------------UNION OPERATOR----------------------

--It is used to combine or unite the result of 2 or many tables..
--It returns UNIQUE values only (repeated values/data/records) are printed just one. There is no duplicates values.....
--Data type of the columns  should be the SAME
--Number of the columns should be the same
--Names can be different... 
--The number of the columns can be different in the table....



SELECT book_title
FROM alice_books


UNION

SELECT book_title
FROM bob_books

UNION

SELECT book_title
FROM john_books;




---Create a list all the books read by BOTH Alice and BOB (With duplicates)

SELECT book_title
FROM alice_books

UNION ALL

SELECT book_title
FROM bob_books



------------UNION ALL-----------------

--It is used to combine or unite the result of 2 or many tables......
--it does not return UNIQUE values (repeated values can be on the console.....)
--Data type of the column should be SAME.....
--Number of the columns in the query should be same 
--Order of the columns should be same...
--name of the column can be different.....





SELECT book_title
	FROM alice_books

	UNION ALL
	
SELECT book_title
	FROM bob_books
	
	UNION ALL
	
SELECT book_title
	FROM john_books;


-- Create a list of the books read by BOTH Alice and BOB (common values/books)

SELECT book_title AS common
	FROM alice_books

	INTERSECT
	
SELECT book_title
	FROM bob_books;


-- Create a list of the books read by Alice, Bob and John (common values/books)

SELECT book_title AS common
	FROM alice_books

	INTERSECT
	
SELECT book_title
	FROM bob_books
	
	INTERSECT
	
SELECT book_title 
	FROM john_books;

--------------------------INTERSECT------------------------------
--You can use INTERSECT operator 2 or many tables....
--it returns common values....
--It returns UNIQUE values(repeted are not possible...)
--Data type of the columns should be same....
--Number of the columns in the query should be SAME 
-- Name can be different...
--number of the columns in the table can be different....



-- Create a list of the books read by Alice BUT NOT by BOB

SELECT book_title
	FROM alice_books

	EXCEPT
	
SELECT book_title
	FROM bob_books;

------EXCEPT NOTES

--It is used to combine or unite result of 2 or many tables....
--It extracts the result of the first query from the result of the second query 
--Data type should be same
--Names can be different 
--number of the columns in the query should be SAME
--number of the columns in the table can be different...

--=========================================================================



CREATE TABLE employees_a (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(30),
    department VARCHAR(20)
);

INSERT INTO employees_a (employee_id, employee_name, department)
VALUES
    (1, 'John Smith', 'HR'),
    (2, 'Alice Johnson', 'IT'),
    (3, 'Bob Williams', 'Finance'),
    (4, 'Eva Davis', 'Marketing');

CREATE TABLE employees_b (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(30),
    department VARCHAR(20)
);
INSERT INTO employees_b (employee_id, employee_name, department)
VALUES
    (2, 'Alice Johnson', 'IT'),
    (3, 'Bob Williams', 'Finance'),
    (5, 'Charlie Brown', 'Sales'),
    (6, 'Grace Miller', 'HR');


SELECT * FROM employees_a;
SELECT * FROM employees_b;


-- Find distinct(unique) list of all employees across both tables.......

SELECT employee_name 
	FROM employees_a
	
	UNION

SELECT employee_name
	FROM employees_b;


-- Find the list of all employees from both tables who work in HR department

SELECT employee_name 
	FROM employees_a
		WHERE department = 'HR'
	
	UNION ALL


SELECT employee_name
	FROM employees_b
		WHERE department = 'HR';


-- Find all list of employees who are in both tables (common) in IT DEPARTMENT

SELECT * 
	FROM employees_a
		WHERE department = 'IT'
	
INTERSECT

SELECT *
	FROM employees_b
		WHERE department = 'IT';


-- Find the employees ffrom employees_a table who are NOT in employees_b table ....

SELECT * 
	FROM employees_a
	
EXCEPT

SELECT *
	FROM employees_b;



---------------------------- STRING MANIPULATION ---------------------------

SELECT * FROM new_workers;

-- Retrieve distinct name from new_workers table ......

SELECT DISTINCT name
FROM new_workers;

-- Retrieve distinct name and their length from new_workers table ...

SELECT DISTINCT name, LENGTH(name)
FROM new_workers;


-- To remove spaces from string ....
SELECT TRIM(name)
FROM new_workers;

-- Display state and first 3 character of state name

SELECT state, SUBSTRING(state, 1,3)
FROM new_workers;


-- Display only first letter as CAPS

SELECT INITCAP(company)
FROM new_workers;


-- Display names in upper case and state will be lowercase

SELECT UPPER(name), LOWER(state)
FROM new_workers;






