CREATE TABLE product(
    product_id SERIAL PRIMARY KEY,
    name TEXT,
    price INT
);

CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES product(product_id)
);

CREATE TABLE users(
    use_id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT    
);