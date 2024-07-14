

---- DAY 07 ----------

---- NOT LIKE OPERATOR WITH WILDCARDS

CREATE TABLE words( 
  word_id CHAR(10) UNIQUE,
  word VARCHAR(30) NOT NULL,
  number_of_letters SMALLINT
);


INSERT INTO words VALUES (1001, 'hot', 3);
INSERT INTO words VALUES (1002, 'hat', 3);
INSERT INTO words VALUES (1003, 'hit', 3);
INSERT INTO words VALUES (1004, 'hbt', 3);
INSERT INTO words VALUES (1008, 'hct', 3);
INSERT INTO words VALUES (1005, 'adem', 4);
INSERT INTO words VALUES (1006, 'selena', 6);
INSERT INTO words VALUES (1007, 'yusuf', 5);
INSERT INTO words VALUES (1009, 'learn', 5);
INSERT INTO words VALUES (1010, 'techpro', 7);


SELECT * FROM words;


-- Return words which do not end with 't' and 'f'

SELECT *
FROM words
WHERE word NOT LIKE '%t' AND word NOT LIKE '%f';


-- Find words which do not have 'a' and 'e' as a second character ....

SELECT *
FROM words
WHERE word NOT LIKE '_a%' AND word NOT LIKE '_e%';

--Find words whose first character is ‘h’ , second character can be any ‘o’ , ‘a’ or ‘i’ and the last character must be ‘t’.....

--1st way to solve this question.... but it is long way...

SELECT *
FROM words
WHERE word LIKE 'ho%t' OR word LIKE 'ha%t' OR word LIKE 'hi%t';


--- 2nd way (RECOMMENDED)

SELECT *
	FROM words
	WHERE REGEXP_LIKE (word, 'h[aoi](.*)t');


/*
---------NOTES about REGEX (Regular Expressions) with LIKE OPERATOR--------------

   1) Regexp_like operator: we use this operator for search operation
   
   Syntax: 
   SELECT *
   FROM table_name
   WHERE REGEXP_LIKE (column_name, 'patter that we are looking for in STRING data')
   
   
   2)REGEXP_LIKE operator works with STRING DATA TYPE
   
   3) We can use REGEX operator with ~ sign
   
   Sytanx
   SELECT *
   FROM table_name
   WHERE column_name ~  'pattern that we are looking for in STRING data' 
   
   
   4)Symbols 
   
    (.*) looks for multiple characters. => works the similiar way as % sign in wildcards; you can use it also without parenthesis .*
	 
	. (fullstop) => looks for single character....
	
	$ => last character......
   

*/




--Find words whose first character is ‘h’ , second character can be any ‘o’ , ‘a’ or ‘i’ 
-- and the last character must be ‘t’.....

SELECT *
	FROM words
	WHERE word ~ 'h[aoi](.*)t';


--Find words whose first character is ‘h’ , second character can be any from a-f and last character must be 't'

SELECT *
	FROM words
	WHERE word ~ 'h[a-f](.*)t';


--Find words whose first character is any 'a', 's' or 'y'

SELECT *
FROM words
WHERE word ~ '^[asy](.*)'


--Find words whose first character is NOT any 'a', 's' or 'y'

SELECT *
FROM words
WHERE word ~ '^[^asy](.*)';


--Find words whose last character is 'm', 'o' or 'a'

SELECT *
FROM words
WHERE word ~ '(.*)[moa]$';


--Find words which start with 't', 's' and end with 'a'

SELECT *
FROM words
WHERE word ~ '^[s](.*)[a]$';


--$ sign and [] become optinal when you are searching for single character in our query....

--Find words which are start with ‘t’ or ‘s’ and end with ‘a’ or ‘o’;

SELECT *
FROM words
WHERE word ~ '^[ts](.*)[ao]$';







SELECT * FROM words;