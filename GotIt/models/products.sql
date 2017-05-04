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
('External HDD', 80, 'WD', '1TB, Black', 'https://cdn.pixabay.com/photo/2016/02/14/19/27/external-hard-drive-1200006_1280.jpg', 10010),
('DDR3 Memory', 50, 'PNY', '16GB', 'https://cdn.pixabay.com/photo/2015/07/23/15/53/computer-memory-857098_1280.jpg', 10010);


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
