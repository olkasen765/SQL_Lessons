
------- DAY 10 --------

CREATE TABLE random (
	id VARCHAR (10),
	name VARCHAR (20),
	salary INT,
	address VARCHAR (60)

);

INSERT INTO random VALUES ('3', 'Tom', 9000, '23R, FL, US');
INSERT INTO random VALUES ('8', 'Ali', 8800, '65B, TX, US');
INSERT INTO random VALUES ('24', 'John', 9900, '21M, AZ, US');


-- Change the data type of salary to Real

ALTER TABLE random
	ALTER COLUMN salary TYPE REAL USING salary :: real;


-- Change data type of salary column to VARCHAR

ALTER TABLE random
	ALTER COLUMN salary TYPE VARCHAR;


-- Change data type of address column to int ....

ALTER TABLE random
	ALTER COLUMN address TYPE INT;

-- Forcing to INT

ALTER TABLE random
	ALTER COLUMN address TYPE INT USING address:: INT;

SELECT * FROM random;


------- HOW TO MODIFY CONSTRAINTS ---------------------------






