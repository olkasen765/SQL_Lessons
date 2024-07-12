------------------- IS NULL and NOT NULL Operators ------------------


CREATE TABLE people (
	ssn INT UNIQUE,
	name VARCHAR (30),
	address VARCHAR (50)
);


INSERT INTO people VALUES (123456789, 'Mark Star', 'Florida');
INSERT INTO people VALUES (234567890, 'Angie Way', 'Virginia');
INSERT INTO people VALUES (345678912, 'Olivia Brooks', 'Arizona');
INSERT INTO people VALUES (456789123, 'Mary Tien', 'New Jersey');

INSERT INTO people (ssn, address) VALUES (567890123, 'California');
INSERT INTO people (ssn, address) VALUES (678901234, 'Michigan');
INSERT INTO people (ssn, address) VALUES (789012345, 'Ohio');


INSERT INTO people (ssn, name) VALUES (890123456, 'Emily Simpson');
INSERT INTO people (ssn, name) VALUES (901234567, 'Axcel Jackson');
INSERT INTO people (ssn, name) VALUES (012389456, 'John Smith');

INSERT INTO people (name, address) VALUES ('John Doe', 'Texas');
INSERT INTO people (name, address) VALUES ('Tom Hanks', 'Washington');
INSERT INTO people (name, address) VALUES ('Emma Watson', 'New York');



-- UPDATE ALL NULL VALUES NAMES TO 'Names will be added later' ....

UPDATE people
SET name = 'Names will be added later'
WHERE name IS NULL;


-- UPDATE ALL NULL VALUES IN ADDRESSES COLUMN TO 'Address is not provided'

UPDATE people
SET address = 'Address is not provided'
WHERE address IS NULL;


-- DELETE ALL RECORDS WHERE SSN IS NULL ....

DELETE
	FROM people
	WHERE ssn IS NULL;

-- DELETE ALL RECORDS WHICH ARE NOT NULL ....

DELETE
	FROM people
	WHERE ssn IS NOT NULL;



SELECT * FROM people;














