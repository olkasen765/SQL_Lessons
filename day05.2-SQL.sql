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



SELECT * FROM customers_products;