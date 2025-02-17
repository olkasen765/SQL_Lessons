
------ PRACTICE 02 ------

DROP TABLE students

	create table students (
id int,
name varchar(50),
city varchar(50),
score int,
department varchar(50)
);

INSERT INTO students VALUES (100, 'Ahmet Ümit', 'İstanbul', 546, 'Computer Science');
INSERT INTO students VALUES (101, 'R.Nuri Güntekin', 'Antalya', 486, 'Business Administration');
INSERT INTO students VALUES (102, 'S.Faik Abasıyanık', 'Bursa', 554, 'Computer Science');
INSERT INTO students VALUES (103, 'Yaşar Kemal', 'İstanbul', 501, 'Mathematics');
INSERT INTO students VALUES (104, 'Halide E. Adıvar', 'İzmir', 473, 'Psychology');
INSERT INTO students VALUES (105, 'Nazan Bekiroğlu', 'İzmir', 432, 'Literature');
INSERT INTO students VALUES (106, 'Peyami Safa', 'Antalya', 535, 'Computer Science');
INSERT INTO students VALUES (107, 'Sabahattin Ali', 'İstanbul', 492, 'Mathematics');
INSERT INTO students VALUES (108, 'Joe Beiden', 'Moscow', 547, 'Algebra');
INSERT INTO students VALUES (109, 'Donald Trumph', 'New-York', 447, 'Computer Science');


--Q1 Retrieve the information of students whose names start with ‘A’

SELECT *
	FROM students
	WHERE name ILIKE 'a%';

--Q2 Retrieve the information of students whose names end with the letter ‘i’

SELECT *
	FROM students
	WHERE city LIKE 'An%';

--Q3 Retrieve the information of students names start with letter ‘A’ and are in the Computer Science department

SELECT *
	FROM students
	WHERE name ILIKE 'a%' AND department = 'Computer Science';

--Q4 Retrieve the information of students whose names contain letter ‘n’

SELECT *
	FROM students
	WHERE name LIKE '%n%';

--Q5 Retrieve the information of students whose names do not start with the letter 'A'

SELECT *
	FROM students
	WHERE name NOT LIKE 'A%';


-- Retrieve the information of students whose names are longer than 12 characters....

SELECT *
	FROM students
	WHERE LENGTH(name) > 10;
 
-- Q7 Retrieve the information of students whose 4th character in theri name is ‘a’

SELECT *
	FROM students
	WHERE name LIKE '_a%';

-- Q8 Retrieve the information of students whose names contain the letters ‘z’ or ‘k’

SELECT *
	FROM students
	WHERE name ~ '[kz]';

-- Q9 Retrive the information of students whose names start with ‘Y’ or ‘N’

SELECT *
	FROM students
	WHERE name LIKE 'Y%' OR name LIKE 'N%';

-- regex way

SELECT *
	FROM students
	WHERE name ~ '^[YN](.*)';

-- Q10 Retrieve the information of studets whose names does not start ‘S’ or ‘P’

SELECT *
	FROM students
	WHERE name ~ '^[^SP](.*)';


-- Q11 Retrieve all information ORDER score with DESC

SELECT * 
	FROM students
	ORDER BY score DESC;

-- Q12 Retrieve all information which are in 3rd and 4th high score...

SELECT * 
	FROM students
	ORDER BY score DESC
	LIMIT 2
	OFFSET 2;

-- Q13 retrieve all information which are 4th and 5th lowest score

SELECT * 
	FROM students
	ORDER BY score
	LIMIT 2
	OFFSET 3;


-- Q14 Uptade name to Cristiano Ronaldo  which score is 501...

UPDATE students
	SET name = 'Cristiano Ronaldo'
	WHERE score = 501;

-- Q15 Uptade the city to Berlin which id is greater than 105 ...

UPDATE students
	SET score = 646
	WHERE id = 100;

DELETE FROM students
	WHERE name = 'Tueasday';

DELETE FROM students
	WHERE id BETWEEN 104 AND 107;

SELECT COUNT(id) 
	FROM students;

INSERT INTO students VALUES (009, 'Sunday', 'Austin', 667, 'QA');
INSERT INTO students VALUES (909, 'Monday', 'Austin', 668, 'QA');
INSERT INTO students VALUES (910, 'Tuesday', 'Austin', 669, 'QA');
INSERT INTO students VALUES (911, 'Wednesday', 'Austin', 670, 'QA');



SELECT * FROM students
	ORDER BY id DESC;









