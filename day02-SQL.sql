-- DAY 01 --

-- this is for comment it is single comment

/*

multiple comment ...

*/

-- 1. Create Database with SQL Query ...

CREATE DATABASE b100;   -- SQL Query is not case sensitive, but for the readability, we recommend to write keywords CAP ...

create database b111;


-- 2. Delete database using SQL QUERY ...
DROP DATABASE b100;

DROP DATABASE b111;


-- 3. Create a table using SQL QUERY ...

CREATE TABLE students (
	id CHAR(4),
	name VARCHAR (10),
	age INT,
	register_date DATE
);

-- To see the table on the console ...

SELECT * FROM students;


-- To Delete the table
DROP TABLE students;


-- How to add data into table

INSERT INTO students VALUES ('01', 'Tom Hanks', 45, '2024-09-12');
INSERT INTO students VALUES ('02', 'John Doe', 33, '2020-02-12');
INSERT INTO students VALUES ('03', 'Emma Wat', 23, '2020-01-10');


-- How to add specific data into the table, 'Insert' is DML ...

INSERT INTO students (name, age) VALUES ('Alex', 46);
INSERT INTO students (id, name) VALUES ('04', 'Anisa');
INSERT INTO students (id, name) VALUES ('05', 'Nataliya');
INSERT INTO students (id, name) VALUES ('06', 'Adam');
INSERT INTO students (age, register_date) VALUES (22, '2018-12-23');



SELECT * FROM students;


--CONSTRAINTS------

-- How to add CONSTRAINTS in table

CREATE TABLE employees (
	id SERIAL,
	name VARCHAR(20) NOT NULL,
	age INT CHECK (age >= 18 AND age <= 65),
	salary Real,
	email VARCHAR(40) UNIQUE
);

-- to see table ...
SELECT * FROM employees;

/*
Normal syntax that we follow when we try to add all values in the table ==> follow the order of the fields as declared in the table ...
But with SERIAL data type we do not need to add value because it will cause conflict ...
So we need to add values by using 2nd way of addint data into specific columns ...
*/

-- ADD data into this table ...

INSERT INTO employees VALUES ('Melis', 34, 2000, 'mls@gmail.com'); -- This is error because I was trying to add all values without id ...

INSERT INTO employees (name, age, salary, email) VALUES ('Ismail', 44, 15000, 'ia@gmail.com');

INSERT INTO employees (age, salary, email) VALUES (23, 9000, 'ab@gmail.com'); -- this will be error, you can not give null value in name column 

INSERT INTO employees (name, age, salary, email) VALUES ('Ibrahim', 77, 11000, 'ib@gmail.com'); -- this will be error because age cannot be older than 65

INSERT INTO employees (name, age, salary, email) VALUES ('Ronaldo', 45, 77000, 'ia@gmail.com'); -- this will be error because e-mail is already declared

INSERT INTO employees (age, name, salary, email) VALUES (19, 'Melik', 90000, 'mn@gmail.com'); -- this will work...

INSERT INTO employees (name, age, salary, email) VALUES (20, 'Kerem', 10000, 'kk@gmail.com'); -- this will be error because data wrong matching

INSERT 
	INTO employees (age, name, salary, email) 
	VALUES (25, 'John', 86000, 'jw@gmail.com');

INSERT 
	INTO employees (age, name, salary, email) 
	VALUES (31, 'Wallas', 96000, 'ww@gmail.com');



SELECT * FROM employees;


-- ADD PRIMARY KEY CONSTRAINT ---

-- 1ST WAY OF CREATING PRIMARY KEY
-- Add keyword PRIMARY KEY next to the column after the data type ...



CREATE TABLE books ( --DDL
	
	book_id SERIAL PRIMARY KEY,
	book_name VARCHAR (30) NOT NULL,
	publisher_id VARCHAR (30),
	page_number INT
	
);


SELECT * FROM books; -- DQL

DROP TABLE books; --DDL


-- 2nd way to creation primary key --

CREATE TABLE books1 (  --DDL
	book_id SERIAL,
	book_name VARCHAR (30) NOT NULL,
	publisher_name VARCHAR(30),
	page_number INT,
	CONSTRAINT id_pk PRIMARY KEY (book_id)
);

SELECT * FROM books1;


--HOW TO CREATE COMPOSITE PRIMARY KEY ---

CREATE TABLE books2 (  --DDL
	book_id SERIAL,
	book_name VARCHAR (30) NOT NULL,
	publisher_name VARCHAR(30),
	page_number INT,
	CONSTRAINT composite_pk PRIMARY KEY (book_id, book_name)

);


--HOW TO CREATE FOREIGN KEY ---

CREATE TABLE authors (  --DDL
	author_id SERIAL,
	author_name VARCHAR(30) NOT NULL,
	book_published INT,
	CONSTRAINT fk_authors FOREIGN KEY (author_id) REFERENCES books1(book_id)

);

SELECT * FROM authors



