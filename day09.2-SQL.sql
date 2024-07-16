

------------------- DAY 09 ---------------------

------------------ ALTER TABLE ------------------------

-- ALTER TABLE is the keyword that we use to update / change the structure of the table .... 

-- ADD COLUMN => to add new column on the table ....

--DROP COLUMN => to drop a column from the table.....


--RENAME COLUMN => change the name of the column from the table.....

-- RENAME TO => Change the name of the table......

--ALTER COLUMN => to change data type, size.. We are using ALTER COLUMN......


SELECT * FROM new_workers;

-- Add new column 'age' with INT data type ....

ALTER TABLE new_workers
ADD COLUMN age INT;


-- Add new column 'remote' with BOOLEAN data type and set it 'TRUE'

ALTER TABLE new_workers
ADD COLUMN remote BOOLEAN DEFAULT true; 


--------------------------- HOW TO MODIFY DATA TYPE ----------------------

-- ADD new column 'country' with VARCHAR datatype and set it 'US'

ALTER TABLE new_workers
ADD COLUMN country VARCHAR DEFAULT 'US'; 


-- DROP the age column 

ALTER TABLE new_workers
DROP COLUMN age; 


-- Change the data type of 'salary' field from small int to REAL

ALTER TABLE new_workers
	ALTER COLUMN salary TYPE REAL;


-- Change the name of the column 'salary' to income

ALTER TABLE new_workers
	RENAME COLUMN salary TO income;


-- Change the data type of 'income' field back to VARCHAR ....

ALTER TABLE new_workers
	ALTER COLUMN income TYPE VARCHAR;


-- FROM VARCHAR TO REAL
ALTER TABLE new_workers
	ALTER COLUMN income TYPE REAL;

-- force the data type
ALTER TABLE new_workers
	ALTER COLUMN income TYPE REAL USING income::real


SELECT * FROM new_workers;














