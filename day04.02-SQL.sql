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



--COMBINING AGGEGATE FUNCTION AND UPDATE SET STATEMENT-----


--Increase Veli's salary to 20% less than the highest salary.....


--First step, we need to find highest salary...

SELECT MAX(worker_salary) FROM workers; --19000


--Second step, we need to calculate 20% less than highes salary....

SELECT MAX(worker_salary)*0.8 AS new_salary FROM workers; -- 15200 



--UPDATE SALARY FOR VELI

--THIS IS HARDCODING
UPDATE workers
SET worker_salary = 15200
WHERE worker_id = 102


--DYNAMIC WAY
UPDATE workers
SET worker_salary = (SELECT MAX(worker_salary)*0.8 AS new_salary FROM workers)
WHERE worker_id = 102


--Decrease Ali's salary to 30% more than the lowest salary



--First step, we need to find lowest salary

SELECT MIN(worker_salary) lowest_salary FROM workers;


--second we need to calculate 30% more from lowest salary...

SELECT MIN(worker_salary)*1.3 FROM workers;


--3rd step we need to decrease Ali's salary

UPDATE workers
SET worker_salary = (SELECT MIN(worker_salary)*1.3 FROM workers)
WHERE worker_name = 'Ali Can';

-- Increase the salaries by 1000 bonus if the salaries are less than average salary...


--First step, we need to find average salary

SELECT ROUND(AVG(worker_salary) , 1) AS average_salary FROM workers;


--second lets see whose getting salary less than average salary

SELECT *
FROM workers
WHERE worker_salary < (SELECT AVG(worker_salary) FROM workers );


--THIRD STEP TO CHANGE THE SALARIES FOR PEOPLE WHO IS GETTING LESS THAN AVERAGE 

UPDATE workers
SET worker_salary = worker_salary +1000
WHERE worker_salary < (SELECT AVG(worker_salary) FROM workers)



SELECT * FROM workers;