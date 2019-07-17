INSERT INTO users(name, email)
VALUES('Jeff', 'jeff@cox.net');
INSERT INTO users(name, email)
values('Bill', 'bill@aol.com');
INSERT INTO users(name, email)
VALUES('Bob', 'bob@google.com');


INSERT INTO product(name, price)
VALUES('pen', 40);
INSERT INTO product(name, price)
values('pencil', 20);
INSERT INTO product(name, price)
VALUES('marker', 60);

INSERT INTO orders(product_id)
VALUES(1);
INSERT INTO orders(product_id)
VALUES(2);
INSERT INTO orders(product_id)
VALUES(3);

SELECT * FROM orders
JOIN product ON (orders.product_id = product.product_id)
WHERE order_id = 1;


SELECT *
FROM orders;

SELECT count(*) FROM orders
JOIN product ON (orders.product_id = product.product_id)
WHERE order_id = 1
GROUP BY product.price;

ALTER TABLE orders ADD COLUMN use_id 
INT REFERENCES users(users_id);

UPDATE orders
SET users_id = 1
WHERE order_id = 1;

UPDATE orders
SET users_id = 2
WHERE order_id = 2;

UPDATE orders
SET users_id = 3
WHERE order_id = 3;


SELECT order_id FROM users
JOIN orders ON (users.users_id = orders.users_id)
WHERE users.users_id = 1;

SELECT count(*), name FROM users
JOIN orders ON (users.users_id = orders.users_id)
GROUP BY users.users_id;

SELECT product.price, users.name FROM users
JOIN orders ON (users.users_id = orders.users_id)
JOIN product ON (orders.product_id = product.product_id);