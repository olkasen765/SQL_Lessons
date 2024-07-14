
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


-- Find total salary for each employee from company_emplyees table ...

SELECT name, SUM(salary) AS total_salary
 	FROM company_employees
	GROUP BY name;

-- Find number of employees per state in descending order (according to number of employees)

SELECT state, COUNT(name) AS number_of_employees
 	FROM company_employees
	GROUP BY state
	ORDER BY number_of_employees DESC;





SELECT * FROM shopping_list;
SELECT * FROM company_employees;






