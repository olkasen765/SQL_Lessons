
---- DAY 06 --------

------ SUBQUERIES ACROSS THE TABLES


CREATE TABLE company_employees (
  id CHAR(9) PRIMARY KEY,
  name VARCHAR(50),
  state VARCHAR(50),
  salary SMALLINT,
  company VARCHAR(20)
);


INSERT INTO company_employees VALUES(123456789, 'John Walker', 'Florida', 2500, 'IBM');
INSERT INTO company_employees VALUES(324567891, 'Neena Omar', 'Ohio', 6000, 'GOOGLE');
INSERT INTO company_employees VALUES(234567890, 'Brad Pitt', 'Florida', 1500, 'APPLE');
INSERT INTO company_employees VALUES(345678901, 'Ali Can', 'Texas', 3500, 'IBM');
INSERT INTO company_employees VALUES(345678905, 'Eddie Murphy', 'Texas', 3000, 'IBM');
INSERT INTO company_employees VALUES(456789019, 'Eddie Murphy', 'Virginia', 1000, 'GOOGLE');
INSERT INTO company_employees VALUES(456789130, 'Veli Han', 'Arozona', 4000, 'GOOGLE');
INSERT INTO company_employees VALUES(567890123, 'Eddie Murphy', 'Texas', 7000, 'MICROSOFT');
INSERT INTO company_employees VALUES(234560789, 'Brad Pitt', 'Texas', 1500, 'GOOGLE');
INSERT INTO company_employees VALUES(456789018, 'Aygul Aydem', 'Pennsylvania', 2500, 'IBM');
INSERT INTO company_employees VALUES(123456710, 'Mark Stone', 'Pennsylvania', 2500, 'IBM');
INSERT INTO company_employees VALUES(123710456, 'Yusuf Arturk', 'Washington', 9000, 'APPLE');



SELECT * FROM company_employees


CREATE TABLE companies (
  company_id CHAR(9),
  company VARCHAR(20),
  number_of_employees SMALLINT
);


INSERT INTO companies VALUES(100, 'IBM', 12000);
INSERT INTO companies VALUES(101, 'GOOGLE', 18000);
INSERT INTO companies VALUES(102, 'MICROSOFT', 10000);
INSERT INTO companies VALUES(103, 'APPLE', 21000);

DROP TABLE companies; 


SELECT * FROM companies


-- Find the employee and company name whose company has more than 15000 employees ...

SELECT name, company
FROM company_employees 
WHERE company IN (SELECT company FROM companies WHERE number_of_employees > 15000);


-- Find the company names and company id which are in Texas ....

SELECT company, company_id
FROM companies 
WHERE company IN (SELECT company FROM company_employees WHERE state = 'Texas');


-- Find the employee name and their states whose company id is 103

SELECT name, state
FROM company_employees 
WHERE company IN (SELECT company FROM companies WHERE company_id = '103');




SELECT * FROM company_employees;
SELECT * FROM companies;





