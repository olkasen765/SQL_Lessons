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

