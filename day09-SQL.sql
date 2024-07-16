
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
	WHERE state LIKE '_e%' AND state LIKE '___n%';

--Select state whose second last character is ‘i’
SELECT *
	FROM company_employees
	WHERE name LIKE 'B%t';

--Select ‘states’ whose second character is ‘e’ and it has at least 6 characters
SELECT *
	FROM company_employees
	WHERE name LIKE 'B%t';

--Select state which has ‘i’ in any position after second character
SELECT *
	FROM company_employees
	WHERE name LIKE '%__i%';


SELECT * FROM company_employees;



