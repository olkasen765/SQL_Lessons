--DAY 04--


CREATE TABLE primary_students(
	student_id CHAR (5) PRIMARY KEY,
	student_name VARCHAR (30),
	email_address VARCHAR NOT NULL,
	student_age NUMERIC (2) CHECK (student_age>5),
	phone_number CHAR (10) UNIQUE
);


INSERT INTO primary_students VALUES ('1111', 'Ryan Brooks', 'rb@gmail.com', 11, '1234567890');
INSERT INTO primary_students VALUES ('1112', 'Emma Williams', 'ew@gmail.com', 12, '2345678901');
INSERT INTO primary_students VALUES ('1114', 'Alice Baker', 'ab@gmail.com', 10, '3456789012');


INSERT INTO primary_students VALUES ('113', 'Tom Hanks', 'th@gmail.com', 15, '1234567891');

INSERT INTO primary_students (student_id, email_address, phone_number) VALUES ('1115', 'abc@outlook.com' , '5678901234');
INSERT INTO primary_students (student_id, email_address, phone_number) VALUES ('1116', 'xyz@gmail.com', '6789012345');


INSERT INTO primary_students (student_id, email_address, phone_number) VALUES 
        ('1117' , 'bc@gmail.com', '6778901234'),
		('1118' , 'pq@yahoo.com' , '8880123456');


SELECT * FROM primary_students;


--UPDATE STATEMENT---

--UPDATE student_id 113 to 1113;

UPDATE primary_students
SET student_id = '1113'
WHERE student_id = '113';

--UPDATE student_name to 'Anthony Queen' where student_id '1115';

UPDATE primary_students
SET student_name = 'Anthony Queen'
WHERE student_id = '1115';


--Change 'Tom Hanks' name to 'John Doe'

UPDATE primary_students
SET student_name = 'John Doe'
WHERE student_name = 'Tom Hanks';


SELECT * FROM primary_students;

--Change email 'bc@gmail.com' to NULL 
UPDATE primary_students
SET email_address = NULL
WHERE email_address = 'bc@gmail.com'; -- you can not add null value in the email address....

--CHANGE STUDENT AGE TO 20 WHERE STUDENT AGE IS NULL...

UPDATE primary_students
SET student_age = 20
WHERE student_age IS NULL;



----AGGERAGATE FUNCTIONS------
-- There five common aggeragate functions ==> AVG, SUM , COUNT, MIN , MAX


--Find minumum age froM primary_students table.....

SELECT MIN(student_age) 
FROM primary_students;



--Find out maximum age from primary_students table.....

SELECT MAX(student_age) 
FROM primary_students;

-- Count the rows ....
SELECT COUNT (student_id)
FROM primary_students;


--UPDATE ALL STUDENTS AGE TO THE MAXIMUM AGE.....

UPDATE primary_students
SET student_age = 20;

UPDATE primary_students
SET student_age = (SELECT MAX(student_age) 
FROM primary_students);


SELECT * FROM primary_students;




CREATE TABLE parents (
	parent_id CHAR (5) PRIMARY KEY,
	parent_name TEXT,
	student_id CHAR (5),
	parent_address TEXT,
	parent_dob DATE
); 

INSERT INTO parents VALUES('2111', 'Adam Brooks', '1111', 'Miami, FL', '1994-10-23');
INSERT INTO parents VALUES('2112', 'Angie Williams', '1112', 'New York, US', '1987-02-13');
INSERT INTO parents VALUES('2113', 'Andrew Duffy', '1113', 'Berlin, Germany', '1976-12-05');
INSERT INTO parents VALUES('2114', 'John Baker', '1114', 'London, UK', '1980-07-07');
INSERT INTO parents VALUES('2115', 'Lydia Smith', '1115', 'Toront, Canada', '1986-09-24');
INSERT INTO parents VALUES('2116', 'Dogan Can', '1116', 'Istanbul, Turkiye', '1990-11-11');


SELECT * FROM parents;


-- WHO IS THE OLDEST IN THE PARENTS TABLE?

SELECT MIN(parent_dob)
FROM parent;

-- to find name of the oldest parent ...
SELECT *
FROM parents
WHERE parent_dob = (SELECT MIN(parent_dob) FROM parents);



-- Who is the youngest person in the table ... 

SELECT *
FROM parents
WHERE parent_dob = (SELECT MAX(parent_dob) 
	FROM parents);


-- change all date of births to highest date of birth ....

UPDATE parents
SET parent_dob = (SELECT MIN(parent_dob) FROM parents);


SELECT * FROM parents;






