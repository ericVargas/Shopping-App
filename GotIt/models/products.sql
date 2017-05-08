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
('PS4', 200, 'Sony', '1TB, Slim', 'http://i.imgur.com/ILlxG2j.jpg', 10010),
('External HDD', 50, 'WD', '1TB, Black', 'https://cdn.pixabay.com/photo/2016/02/14/19/27/external-hard-drive-1200006_1280.jpg', 10010),
('DDR3 Memory', 50, 'PNY', '16GB', 'https://cdn.pixabay.com/photo/2015/07/23/15/53/computer-memory-857098_1280.jpg', 10010),
('iPad', 80, 'Apple', '32GB, 1st Gen', 'url', 10010),
('GoPro', 100, 'GoPro', 'Hero HD', 'url', 10010),
('Mac Mini', 300, 'Apple', '2.4GHz Intel Core Duo, 8GB Ram, 256GB HDD, NVIDIA GeForce 320M', 'url', 10010),
('Wireless Keyboard', 50, 'Apple', '1st Gen', 'url', 10010),
('Magic Trackpad', 50, 'Apple', '1st Gen', 'url', 10010),
('Extension Cord', 10, 'Apple', 'White', 'url', 10010),
('Usb Adapter', 10, 'Apple', 'Usb Type A -> Usb Type C', 'url', 10010),


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
