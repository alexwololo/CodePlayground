-- Step 1
-- create a new database
SELECT database();
CREATE DATABASE shirts_db;

-- Step 2
-- select the db
use shirts_db;
SELECT database();

-- Step 3
-- create a new table
CREATE TABLE shirts
(
    shirt_id    INT NOT NULL AUTO_INCREMENT,
    article     VARCHAR(100),
    color       VARCHAR(100),
    shirt_size  VARCHAR(100),
    last_worn   INT,
    PRIMARY KEY(shirt_id)
);

SELECT database(); -- see current database
SHOW TABLES; -- see current table
SELECT * FROM shirts; -- see all from database
SHOW COLUMNS FROM shirts; -- see columns
DESC shirts; -- see description

-- Step 4
-- create and populate columns
INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);
SELECT * FROM shirts; -- see all from database

-- Step 5
-- add a new shirt
INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUES ('polo shirt', 'purple', 'M', '50');
SELECT * FROM shirts;

-- Step 6
-- select all shirt but only display article and color
SELECT article, color FROM shirts;

-- Step 7
-- select all medium shirts, display everything but shirt_id
SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size='M';

-- Step 8
-- update all polo shirt to have size L
UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';
SELECT * FROM shirts;

-- Step 9
-- update the shirt last worn 15 days ago to 'last_worn 0'
UPDATE shirts
SET last_worn=0
WHERE last_worn=15;
SELECT * FROM shirts;

-- Step 10
-- change size to 'XS' and color to 'off white'
SELECT * FROM shirts WHERE color='white'; -- see common traits
UPDATE shirts SET shirt_size='XS', color='off white' WHERE shirt_size='S';
SELECT * FROM shirts;

-- Step 11
-- delete all shirts worn 200 days ago
DELETE FROM shirts WHERE last_worn=200;
SELECT * FROM shirts;

-- Step 12
-- delete all tank tops
DELETE FROM shirts WHERE article='tank top';
SELECT * FROM shirts;

-- Step 13
-- delete all shirts
SELECT * FROM shirts;
DELETE FROM shirts;
SELECT * FROM shirts;


-- Step 14
-- Drop the shirts table

DROP TABLE shirts;
SELECT * FROM shirts;
show tables;
desc shirts;
