DROP DATABASE IF EXISTS products_db;
CREATE DATABASE products_db;

\c products_db;

CREATE TABLE list (
    PID SERIAL PRIMARY KEY,
    product TEXT,
    price INTEGER,
    brand TEXT,
    descrip TEXT,
    images TEXT,
    UserId INTEGER
);

INSERT INTO list (product, price, brand, descrip, images, UserId)
VALUES ('PS4', 200, 'Sony', '1TB, Slim', 'ps4.jpg', 1);

CREATE TABLE users (
    UserId SERIAL PRIMARY KEY,
    first TEXT,
    lastInt TEXT,
    zipcode INTEGER,
    email TEXT
);

INSERT INTO users (first, lastInt, zipcode, email)
VALUES ('Eric', 'V', 11373, 'ev@gmail.com');

CREATE TABLE offers (
    OfferId SERIAL PRIMARY KEY,
    PID INTEGER,
    offer INTEGER,
    accepted BOOLEAN
);

INSERT INTO offers (OfferId, PID, offer, accepted)
VALUES (1, 1, 150, false);