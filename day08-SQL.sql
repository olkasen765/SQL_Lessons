
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








SELECT * FROM employees1;

