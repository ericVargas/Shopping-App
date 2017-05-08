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
('Mac Mini', 400, 'Apple', '2.4GHz Intel Core Duo, 8GB Ram, 256GB HDD, NVIDIA GeForce 320M', 'http://imgur.com/ZEqOo1O.jpg', 10010),
('External HDD', 50, 'WD', '1TB, Black', 'http://imgur.com/kvcxdxH.jpg', 10010),
('iPad', 80, 'Apple', '32GB, 1st Gen', 'http://imgur.com/7dE6iXd.jpg', 10010),
('GoPro', 100, 'GoPro', 'Hero HD', 'http://imgur.com/dt3GcrX.jpg', 10010),
('Wireless Keyboard', 50, 'Apple', '1st Gen', 'http://imgur.com/zFN1BKj.jpg', 10010),
('Magic Trackpad', 50, 'Apple', '1st Gen', 'http://i.imgur.com/oEtzBIr.jpg', 10010),
('Extension Cord', 10, 'Apple', 'White', 'http://i.imgur.com/I8yntzL.jpg', 10010),
('Usb Adapter', 10, 'Apple', 'Usb Type C -> Usb', 'http://i.imgur.com/Y8BkSj6.jpg', 10010),
('Rechargable AA Batteries', 20, 'Apple', '6 AA batteries with adapter', 'http://i.imgur.com/i5UMrs5.jpg', 10010);

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
