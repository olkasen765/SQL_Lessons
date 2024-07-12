CREATE TABLE customers_products (
  product_id INT,
  customer_name VARCHAR(30),
  product_name VARCHAR(30)
);

INSERT INTO customers_products VALUES (10, 'Mark Twain', 'Orange');
INSERT INTO customers_products VALUES (10, 'Mark Wilson', 'Mango');
INSERT INTO customers_products VALUES (20, 'John Clark', 'Apple');
INSERT INTO customers_products VALUES (30, 'Amy Williams', 'Plum');
INSERT INTO customers_products VALUES (20, 'Mark Donne', 'Apple');
INSERT INTO customers_products VALUES (10, 'Adam Smith', 'Orange');
INSERT INTO customers_products VALUES (40, 'John Evans', 'Apricot');
INSERT INTO customers_products VALUES (20, 'Eddie Murphy', 'Apple');
INSERT INTO customers_products VALUES (30, 'Anna Goldman', 'Mango');
INSERT INTO customers_products VALUES (50, 'Helen Green', 'Grapes');
INSERT INTO customers_products VALUES (10, 'Laura Owen', 'PineApple');


---- IN AND NOT IN OPERATORS -------

--Find the records that has the product_name which are 'Orange' , 'Mango', 'Apple'

-- 1st way , not recommended
	
SELECT *
	FROM customers_products
	WHERE product_name = 'Apple' OR product_name = 'Mango' OR product_name = 'Orange';

2nd way, use IN

SELECT *
	FROM customers_products
	WHERE product_name IN ('Orange', 'Mango', 'Apple');
	

SELECT * FROM customers_products;


--- NOT IN ---

-- THIS WAY IS RECOMMENDED ...

--Find the records that does not have 'Orange', 'Plum', 'Apricot'

SELECT *
FROM customers_products
WHERE product_name NOT IN ('Orange', 'Plum', 'Apricot');


-- NOT RECOMMENDED WAY ---

SELECT *
FROM customers_products
WHERE product_name <> 'Orange' AND product_name <> 'Apple' AND product_name <> 'Apricot' 


-- BETWEEN AND NOT BETWEEN ---

-- Between => iclusive .. begining and ending boundary values are included ...

-- Not Between => exclusive .. begining and ending boundary values are NOT included ...

-- Find the product names where product id is greater than or equal to 20 and less than or equal 50 ....

-- RECOMMENDED WAY
SELECT product_id, product_name
FROM customers_products
WHERE product_id BETWEEN 20 AND 50;


-- NOT RECOMMENDED WAY
SELECT product_id, product_name
FROM customers_products
WHERE product_id >= 20 AND product_id <= 40;


-- Find the records that product_id less than 20 AND greater than 50 ....

-- RECOMMENDED WAY
SELECT *
FROM customers_products
WHERE product_id NOT BETWEEN 20 AND 50;


-- NOT RECOMMENDED WAY
SELECT *
FROM customers_products
WHERE product_id <= 20 OR product_id >= 40;



---------------------- EXIST OPERATOR ---------------------------

-- This operator a little bit tricky, so be careful using it......

CREATE TABLE customers_likes(
  product_id CHAR(10),
  customer_name VARCHAR(50),
  liked_product VARCHAR(50)
);

INSERT INTO customers_likes VALUES (10, 'Mark', 'Orange');
INSERT INTO customers_likes VALUES (50, 'Mark', 'Pineapple');
INSERT INTO customers_likes VALUES (60, 'John', 'Avocado');
INSERT INTO customers_likes VALUES (30, 'Lary', 'Cherries');
INSERT INTO customers_likes VALUES (20, 'Mark', 'Apple');
INSERT INTO customers_likes VALUES (10, 'Adem', 'Orange');
INSERT INTO customers_likes VALUES (40, 'John', 'Apricot');
INSERT INTO customers_likes VALUES (20, 'Eddie', 'Apple');

SELECT * FROM customers_likes;


-- UPDATE ALL customer_name to 'No Name' if the field has a name 'Hary' .....

-- 1st way to update all customer name ....

UPDATE customers_likes
SET customer_name = 'No Name'
WHERE customer_name = 'Hary';


-- 2nd way yo update all customer name to 'No Name' if the field has a name 'Hary' ....

UPDATE customers_likes
	SET customer_name = 'No Name'
	WHERE EXISTS (SELECT customer_name FROM customers_likes WHERE customer_name = 'Hary');


-- UPDATE ALL customer name to 'No name' if the field has a name 'Mark' ....

UPDATE customers_likes
SET customer_name = 'No Name'
WHERE customer_name = 'Mark';


-- UPDATE ALL customer name to 'No name' if the field has a name 'John' ....

UPDATE customers_likes
	SET customer_name = 'NO NAME'
	WHERE EXISTS (SELECT customer_name FROM customers_likes WHERE customer_name = 'John');


-- UPDATE ALL CUSTOMER NAME TO 'Some Name' if the field has 'Orange' ...

-- 1st way

UPDATE customers_likes
	SET customer_name = 'Some Name'
	WHERE liked_product = 'Orange';

-- 2nd way change all values in customer name to 'SOME NAME' column if liked_product has 'Apricot' ....

UPDATE customers_likes
	SET customer_name = 'SOME NAME'
	WHERE EXISTS (SELECT liked_product FROM customers_likes WHERE liked_product = 'Apricot');


-- UPDATE ALL customer_name to 'John Doe' if the liked_product field has 'Orange' or 'Pineapple' or 'Avocado' ...

UPDATE customers_likes
	SET customer_name = 'John Doe'
	WHERE liked_product IN ('Orange', 'Pineapple', 'Avocado');


UPDATE customers_likes
	SET customer_name = 'John Doe'
	WHERE EXISTS (SELECT liked_product FROM customers_likes WHERE liked_product IN ('Orange', 'Pineapple', 'Avocado'));



-------- What is the difference ? -----------------
-- If you wanna update specific records in a table. DO NOT USE EXISTS OPERATOR. 
-- BECAUSE EXISTS OPERATOR WORKS WITH A SUBQUERY. IF THAT SUBQUERY RETURNS TRUE, EXISTS OPERATOR UPDATES THE WHOLE FIELD......




-- Delete all records if there is 'Cherries' in the liked_product field in the customer_likes table ....

DELETE 
FROM customers_likes
WHERE EXISTS (SELECT liked_product FROM customers_likes WHERE liked_product = 'Cherries');




SELECT * FROM customers_likes;










