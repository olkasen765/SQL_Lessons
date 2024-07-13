
----------------------------------------------LIKE OPERATOR --------------
--Like operator is used with WILDCARDS.....
--WILDCARD => useful expression for search operations in SQL querries.....
--They are used with STRING data type.....
--1) % => Percentage sign => it represents zero or more characters.....
--2) . => Fullstop sign => it represents one single character....



CREATE TABLE email_list(
	 email_id INT PRIMARY KEY,
	 email_address VARCHAR (50)
 );
 
 
 
 INSERT INTO email_list (email_id, email_address) 
 VALUES 
 		(1, 'alice*gmail.com'),
		(2, 'bob@example.com'),
		(3, 'charlie@hotmail.com'),
		(4, 'dave@gmail.com'),
		(5, 'eve@yahoo.com'),
		(6, 'frank@gmail.com'),
		(7, 'grace@example.com'),
		(8, 'john@outlook.com'),
		(9, 'emily@gmail.com'),
		(10, 'ava@yahoo.com');


INSERT INTO email_list (email_id, email_address) VALUES (11, 'neymar@gmail.com');


-- Returns all records that end at 'gmail.com'
	
SELECT * 
	FROM email_list
	WHERE email_address LIKE '%gmail.com';
	

-- Return all records that start with 'f'
	
SELECT * 
	FROM email_list
	WHERE email_address LIKE 'f%';


-- Return all records that start with 'john'

SELECT * 
FROM email_list
WHERE email_address LIKE 'john%';


-- Return all records that have 'v' anywhere ...

SELECT * 
FROM email_list
WHERE email_address LIKE '%v%';

-- Return all records that starts with 'g' and end with 'm' ...

SELECT * 
FROM email_list
WHERE email_address LIKE 'g%m';


-- Return all records that have 'r' and 'n' at any position ...

SELECT * 
FROM email_list
WHERE email_address LIKE '%r%n%' OR email_address LIKE '%n%r%';




SELECT * FROM email_list;












