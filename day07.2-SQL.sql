

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





SELECT * FROM words;