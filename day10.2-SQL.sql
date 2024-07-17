
------------- JOINS ---------------------------

-- JOINS are used to join/combine data from two or more TABLES
-- They're always used with ON statement 

-- INNER JOIN: it returns common data from two tables according to the given filter 
-- LEFT JOIN: it returns ALL values from first table AND common values according to the given filter 
-- RIGHT JOIN: it returns ALL values from second table AND common values according to the given filter 
-- FULL JOIN: it returns ALL values from BOTH tables according to the given filter 
-- SELF JOIN: it works with SINGLE table, it works with it SELF, and returns data according to the given filter 




CREATE TABLE my_companies(
  company_id CHAR(3),
  company_name VARCHAR(20)
);

INSERT INTO my_companies VALUES(100, 'IBM');
INSERT INTO my_companies VALUES(101, 'GOOGLE');
INSERT INTO my_companies VALUES(102, 'MICROSOFT');
INSERT INTO my_companies VALUES(103, 'APPLE');

SELECT * FROM my_companies;



CREATE TABLE orders(
  company_id CHAR(3),
  order_id CHAR(3),
  order_date DATE
);

INSERT INTO orders VALUES(101, 11, '17-Apr-2023');
INSERT INTO orders VALUES(102, 22, '25-Nov-2023');
INSERT INTO orders VALUES(103, 33, '19-Jan-2023');
INSERT INTO orders VALUES(104, 44, '20-Aug-2023');
INSERT INTO orders VALUES(105, 55, '21-Oct-2023');


-- INNER
-- Find the company name, order_date, order_id for company that exist in both tables ...

SELECT  my_companies.company_id, my_companies.company_name, orders.order_date,orders.order_id
	FROM my_companies INNER JOIN orders
	ON my_companies.company_id = orders.company_id;

-- LEFT JOIN 

SELECT mc.company_name, o.order_id, o.order_date
	FROM my_companies mc LEFT JOIN orders o
	ON mc.company_id = o.company_id;


-- RIGHT JOIN 

SELECT mc.company_name, o.order_id, o.order_date
	FROM my_companies mc RIGHT JOIN orders o
	ON mc.company_id = o.company_id;

-- FULL JOIN 

SELECT mc.company_name, o.order_id, o.order_date
	FROM my_companies mc FULL JOIN orders o
	ON mc.company_id = o.company_id;


	
SELECT * FROM orders;
SELECT * FROM my_companies;













