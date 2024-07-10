--DAY 05---


--HOW TO SELECT A RECORD WHOSE SALARY IS SECOND HIGHEST 

--First Highest Salary 

SELECT MAX(worker_salary) AS first_highest_salary FROM workers;


--2. SECOND HIGHEST SALARY

SELECT MAX(worker_salary) AS second_highest_salary 
FROM workers
WHERE worker_salary < (SELECT MAX(worker_salary) AS first_highest_salary FROM workers);



-- find the recordes which is second lowest salary...

-- find First lowest Salary

SELECT MIN(worker_salary) FROM workers;


-- find 2. lowest salary 

SELECT MIN(worker_salary) AS second_lowestSalary
FROM workers
WHERE worker_salary > (SELECT MIN(worker_salary) FROM workers);


--ORDER BY CLAUSE --------
--Is used to sort the data according to the column_name that is mentioned after ORDER BY keyword....


SELECT *
FROM workers
ORDER BY worker_id;


SELECT worker_name
FROM workers
ORDER BY worker_name DESC;

SELECT * FROM workers;

--Find the highest salary using ORDER BY....

SELECT *
FROM workers
ORDER BY worker_salary DESC;


-- Instead of using subquery we can use OFFSET, LIMIT OR FETCH......


SELECT *
FROM workers
ORDER BY worker_salary DESC
FETCH NEXT 1 ROW ONLY



--Find second highest salary only....

SELECT *
FROM workers
ORDER BY worker_salary DESC
OFFSET 1
FETCH NEXT 1 ROW ONLY



--Find third highest salary

SELECT *
FROM workers
ORDER BY worker_salary DESC
OFFSET 1
LIMIT 1



--NOTES--
--Subquery is a universal language.
--ORDER BY --OFFSET is most commonly used in MYSQL, POSTGRESQL, Oracle. It is not universal....
--ORDER BY sorts the data in ASCENDING Order by default. If we want to change the order to DESCENGIN
--WE must add DESC keyword....
--if the data type is STRING by default, it is ordered in ALPHABETICAL(Natural) ORDER....