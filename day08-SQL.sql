
--- DAY 08 ---

---------- CONCATENATION IN SQL -----------------

---- To display multiple columns as a single column, we will use || ' ' || sign and concatenate (join the data together)

CREATE TABLE employees1 (  
  employee_id numeric(9), 
  employee_first_name VARCHAR(20),
  employee_last_name VARCHAR(20)
); 


INSERT INTO employees1 VALUES(14, 'Chris', 'Tae');
INSERT INTO employees1 VALUES(11, 'John', 'Walker');
INSERT INTO employees1 VALUES(12, 'Amy', 'Star');
INSERT INTO employees1 VALUES(13, 'Brad', 'Pitt');
INSERT INTO employees1 VALUES(15, 'Chris', 'Way');


-- Merge employee_id, first name and last name as full info

SELECt employee_id || ' ' || employee_first_name || ' ' || employee_last_name AS Full_info 
	FROM employees1;


-- Merge first name and last name as full info

SELECt employee_first_name || ' ' || employee_last_name AS FULL_NAME 
	FROM employees1;


------------------------- GROPU BY CLAUSE -------------------------------------

-- It is used for gouping data together in one field ....
-- It is mostly used with AGREGATE FUNCTIONS .....

CREATE TABLE shopping_list (
    item_id SERIAL PRIMARY KEY,
    category VARCHAR(50),
    item_name VARCHAR(50),
    price DECIMAL(8, 2)
);


INSERT INTO shopping_list (category, item_name, price)
VALUES
    ('Fruits', 'Apple', 1.50),
    ('Vegetables', 'Tomato', 1.00),
    ('Dairy', 'Milk', 2.25),
    ('Bakery', 'Muffin', 1.50),
    ('Meat', 'Chicken', 5.50),
    ('Vegetables', 'Carrot', 0.75),
    ('Meat', 'Mutton', 6.80),
    ('Dairy', 'Cheese', 3.75),
    ('Fruits', 'Banana', 0.99),
    ('Bakery', 'Croissant', 2.00),
    ('Bakery', 'Baguette', 2.20),
    ('Meat', 'Salmon', 9.99),
    ('Fruits', 'Grapes', 2.50),
    ('Vegetables', 'Broccoli', 1.25),
    ('Dairy', 'Butter', 2.50),
    ('Dairy', 'Yogurt', 1.99),
    ('Vegetables', 'Spinach', 1.80),
    ('Fruits', 'Orange', 1.25),
    ('Bakery', 'Bread', 1.80),
    ('Meat', 'Beef', 7.20);


-- Find how much is the total price for each category

SELECT category, SUM(price) AS total_price_forCategory
 	FROM shopping_list
	GROUP BY category;


-- Find average price for each category

SELECT category, ROUND(AVG(price),1) AS average_price_forCategory
 	FROM shopping_list
	GROUP BY category;


-- Find min, max price and total number of items for each category....

SELECT category, MIN(price) AS min_price, MAX(price) AS max_price, COUNT(item_name) AS total_number
 	FROM shopping_list
	GROUP BY category;


SELECT * FROM shopping_list;

-- Find total salary for each employee from company_emplyees table ...

SELECT name, SUM(salary) AS total_salary
 	FROM company_employees
	GROUP BY name;

-- Find number of employees per state in descending order (according to number of employees)

SELECT state, COUNT(id) AS number_of_employees
 	FROM company_employees
	GROUP BY state
	ORDER BY number_of_employees DESC;


SELECT * FROM company_employees;



CREATE TABLE new_workers (  
  id CHAR(9), 
  name VARCHAR(50), 
  state VARCHAR(50), 
  salary SMALLINT,
  company VARCHAR(20),
  number_of_employees numeric(5)
	
);


INSERT INTO new_workers VALUES(123451760, 'Ali Can', 'Pennsylvania', 8000, 'GOOGLE', 90000);
INSERT INTO new_workers VALUES(123456789, 'John Walker', 'Florida', 2500, 'IBM', 34500);
INSERT INTO new_workers VALUES(456789012, 'Veli Han', 'Arizona', 4000, 'GOOGLE', 90000);
INSERT INTO new_workers VALUES(234567890, 'Ayse Gul', 'Florida', 1500, 'APPLE', 45500);
INSERT INTO new_workers VALUES(345678901, 'Eddie Murphy', 'Texas', 3000, 'IBM', 23700);
INSERT INTO new_workers VALUES(567890123, 'Yusuf Arturk', 'Washington', 8000, 'APPLE', 45500);
INSERT INTO new_workers VALUES(456789012, 'Eddie Murphy', 'Virginia', 1000, 'GOOGLE', 90000);
INSERT INTO new_workers VALUES(567890123, 'Eddie Murphy', 'Texas', 7000, 'MICROSOFT', 60000);
INSERT INTO new_workers VALUES(456789012, 'Ayse Gul', 'Texas', 1500, 'GOOGLE', 90000);
INSERT INTO new_workers VALUES(123456710, 'Mark Stone', 'Pennsylvania', 2500, 'IBM', 23700);
INSERT INTO new_workers VALUES(123456710, 'Ali Can', 'Pennsylvania', 5000, 'IBM', 23700);
INSERT INTO new_workers VALUES(785690123, 'Fatih Tamer', 'Texas', 9000, 'MICROSOFT', 60000);
INSERT INTO new_workers VALUES(123456789, 'John Walker', 'Florida', 5000, 'GOOGLE', 90000);



-- Find total salary for each name ...

SELECT name, SUM(salary) AS total_salary
 	FROM new_workers
	GROUP BY name;


-- Find total number of emplyees for each state and order in descending order ...

SELECT state, SUM(number_of_employees) AS total_number_of_employees
 	FROM new_workers
	GROUP BY state
	ORDER BY total_number_of_employees DESC;


-- Find MIN and MAX salary for each company ...

SELECT company, MIN(salary) AS min_salary, MAX(salary) AS max_salary
 	FROM new_workers
	GROUP BY company;


-- Find total number of employees (name) for each company which is paying salary more than 4000 ...

SELECT company, COUNT(name) AS number_of_employees
 	FROM new_workers
	WHERE salary > 4000
	GROUP BY company;


-- Find total salary for each employee whose salary more than 5000 ...

SELECT name, SUM(salary) AS total_salary
 	FROM new_workers
	GROUP BY name
	HAVING SUM(salary) > 5000;  -- HAVING clause is used filter data after GROUP BY 


-------------------- HAVING CLAUSE ------------------------------
--Having clause is used to filtr the result of AGGREGATE FUNCTIONS....
--Having clause is working in combination with GROUP BY
--Both where condition and HAVING clause are used to filter the data....
--DIFFERENCE where condition filters the indvidual data BEFORE grouping
--       HAVING clause filters the result AFTER grouping.....


--Find the total number of employees per state that has more than 100,000 employees....

SELECT state, SUM(number_of_employees)
 	FROM new_workers
	GROUP BY state
	HAVING SUM(number_of_employees) > 100000;  


--Find the MAX salary values that are above 7000 per company ....

SELECT company, MAX(salary) AS max_salary_each
 	FROM new_workers
	GROUP BY company
	HAVING MAX(salary) > 7000;  


-- Do practice about where, group by and having clause. You can find exercise on sqlbot or other websites 






SELECT * FROM new_workers;
