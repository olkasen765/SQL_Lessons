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

