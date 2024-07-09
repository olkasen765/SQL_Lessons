CREATE TABLE workers(
  worker_id SMALLINT,
  worker_name VARCHAR(30),
  worker_salary NUMERIC,

  CONSTRAINT worker_id_pk PRIMARY KEY(worker_id)
);


INSERT INTO workers VALUES(101, 'Ali Can', 10000);
INSERT INTO workers VALUES(102, 'Veli Han', 4000);
INSERT INTO workers VALUES(103, 'Aisha Can', 7000);
INSERT INTO workers VALUES(104, 'Angie Ocean', 12000);
INSERT INTO workers VALUES(105, 'Musa Ahmet', 9000);
INSERT INTO workers VALUES(106, 'Ali Can', 19000);
INSERT INTO workers VALUES(107, 'Aygul Aksoy',13000);
INSERT INTO workers VALUES(108, 'Hasan Basri', 16000);
INSERT INTO workers VALUES(109, 'Fatih Tamer', 18000);
INSERT INTO workers VALUES(110, 'Emel Ebru', 8000);

SELECT * FROM workers;

-- FIND THE MINIMUM SALARY

SELECT MIN(worker_salary)
FROM workers;

-- FIND THE MINIMUM SALARY

SELECT MAX(worker_salary)
FROM workers;


----- ALIAS ------

-- We use AS(ALIAS) to give a temporary name to to the field that contains result ...
-- IT IS LIKE system.out.println("Total Salary" + counter);


SELECT worker_salary || ' ' || worker_name AS min_Value
FROM workers;

-- FIND THE MINIMUM SALARY
SELECT MIN(worker_salary) AS minimum_salary
FROM workers;

-- FIND THE MAXIMUM SALARY
SELECT MAX(worker_salary) AS maximum_salary
FROM workers;


-- FIND THE TOTAL NUMBER OF EMPLOYEES (USE ALIAS);

SELECT COUNT(worker_id) AS number_of_employees
FROM workers;


-- FIND THE AVERAGE SALARY AND USE ALIAS ....
SELECT AVG(worker_salary) AS average_salary
FROM workers;

-- remove digits after comma .....
SELECT ROUND(AVG(worker_salary), 1) AS average_salary
FROM workers;





SELECT * FROM workers;










