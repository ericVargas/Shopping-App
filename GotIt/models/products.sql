DROP DATABASE IF EXISTS products_db;
CREATE DATABASE products_db;

\c products_db;

CREATE TABLE list (
    id SERIAL PRIMARY KEY,
    product TEXT,
    price INTEGER,
    brand TEXT,
    descrip TEXT,
    images TEXT,
    zipcode INTEGER
);

INSERT INTO list (product, price, brand, descrip, images, zipcode)
VALUES 
('PS4', 200, 'Sony', '1TB, Slim', 'ps4.jpg', 10010),
('External HDD', 80, 'WD', '1TB, Black', 'hdd.jpg', 10010),
('DDR3 Memory', 50, 'PNY', '16GB', 'ram.jpg', 10010);


CREATE TABLE offers (
    id SERIAL PRIMARY KEY,
    first TEXT,
    lastInt TEXT,
    email TEXT,
    list_id INTEGER,
    offer INTEGER,
    accepted BOOLEAN
);

INSERT INTO offers (first, lastInt, email, list_id, offer)
VALUES ('Eric', 'V', 'ev@gmail.com', 1, 150);
