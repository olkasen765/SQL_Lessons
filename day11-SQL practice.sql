
----------- PRACTICE SQL -----------------

CREATE TABLE student20(
	id int primary key,
	name varchar(30),
	address varchar(100),
	exam_score integer
);

-- 1st way to insert data, according the order ....

INSERT INTO student20 VALUES (1, 'Betul', 'Izmir', 80);

-- 2nd way how to add specific data into the table

INSERT INTO student20 (id, name, address, exam_score) VALUES

				(2, 'Zeki Bey', 'Izmir', 90),
				(3, 'Cemal Dogan', 'Trabzon', 65),
				(4, 'Mirac', 'Bursa', 45),
				(5, 'Yavuz Bal', 'Antalya', 55);
				
INSERT INTO student20 (id, name, exam_score) VALUES
				(6, 'Bilal Degirmen', 95),
				(7, 'Fahri Ersoz', 92);


--- Q1 retrieve all records with id and name information from student20 table

SELECT id, name 
	FROM student20;

-- Q2 List all information of students with exam scores greater than 80

SELECT * 
	FROM student20
	WHERE exam_score > 80;

-- Q3 list all information of students whose address in Antalya

SELECT * 
	FROM student20
	WHERE address = 'Antalya';


--Q4 List names of students who have an exam score 80 and whose address is Izmir....

SELECT * 
	FROM student20
	WHERE address = 'Izmir' AND exam_score = 80;

--Q5 List all information of students with exam scores 55 or 100;

SELECT * 
	FROM student20
	WHERE exam_score = 55 OR exam_score = 100;

--Q6 List all information of students with exam scores between 65 AND 85

SELECT * 
	FROM student20
	WHERE exam_score BETWEEN 65 AND 85;

-- Q7 List all names and exam_score of students whose id are not between 3 and 5

SELECT name, exam_score 
	FROM student20
	WHERE id NOT BETWEEN 3 AND 5;

-- Q8 What is the highest exam_score?

SELECT MAX(exam_score)
	FROM student20;

--Q9 List students living in Izmir and having an exam_score greater than 50;

SELECT * 
	FROM student20
	WHERE exam_score > 50 AND address = 'Izmir';

--Q10 Number of students and average exam_score...

SELECT COUNT(*) number_of_students,
	ROUND (AVG (exam_score),2) averageScore
	FROM student20; 
	
-- Q11 Delete the row with an exam score of 55 ....

DELETE FROM student20
	WHERE exam_score = 55;

-- Q12 Delete the row with the names Cristiano Ronaldo or Cemal Dogan

DELETE FROM student20
	WHERE name IN ('Cristiano Ronaldo', 'Cemal Dogan');

-- Q13 DELETE THE CONTENTS OF THE student20 table

DELETE FROM student20;

-- another way 

TRUNCATE TABLE student20;


-- Q14 DELETE THE STUDENT TABLE...

DROP TABLE student20;


SELECT * FROM student20;







