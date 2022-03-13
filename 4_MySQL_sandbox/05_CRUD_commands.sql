--CODE: Introduction to CRUD


/*****************************************************/

-- CREATE
--CODE: Preparing Our Data
--Let's drop the existing cats table:

INSERT INTO cats(name, age) VALUES(‘Taco’, 14);

--Recreate a new cats table:
CREATE TABLE cats
  (
     cat_id INT NOT NULL AUTO_INCREMENT,
     name   VARCHAR(100),
     breed  VARCHAR(100),
     age    INT,
     PRIMARY KEY (cat_id)
  );
DESC cats;

--And finally insert some new cats:
INSERT INTO cats(name, breed, age)
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

/*****************************************************/

--READ/SELECT selecting all
--Various Simple SELECT statements:
SELECT <x> -- * or tablename
FROM <tableName>; -- from a tablename

-- * = all
SELECT * FROM cats;
SELECT name FROM cats;
SELECT age FROM cats;
SELECT cat_id FROM cats;
SELECT name, age FROM cats;
SELECT cat_id, name, age FROM cats;
SELECT age, breed, name, cat_id FROM cats;
SELECT cat_id, name, age, breed FROM cats;

/*****************************************************/

--WHERE select specific data
--Select by age:
SELECT * FROM cats WHERE age=4;
--Select by name:
SELECT * FROM cats WHERE name='Egg';
--Notice how it deals with case:
SELECT * FROM cats WHERE name='egG'

/*****************************************************/
--Example 1
SELECT cat_id FROM cats;
SELECT name, breed FROM cats;
SELECT name, age FROM cats WHERE breed='Tabby';
SELECT cat_id, age FROM cats WHERE cat_id=age;
SELECT * FROM cats WHERE cat_id=age;

/*****************************************************/
https://www.w3schools.com/sql/sql_alias.asp
--Aliases
-- SQL aliases are used to give a table, or a column in a table, a temporary name. Aliases are often used to make column names more readable.
-- An alias only exists for the duration of that query. An alias is created with the AS keyword.

-- Alias Column Syntax
SELECT column_name AS alias_name
FROM table_name;

-- Alias Table Syntax
SELECT column_name(s)
FROM table_name AS alias_name;

SELECT cat_id AS id, name FROM cats;
SELECT name AS 'cat name', breed AS 'kitty breed' FROM cats;
DESC cats;

-- Aliases can be useful when:
-- There are more than one table involved in a query. Functions are used in the query. Column names are big or not very readable. Two or more columns are combined together

/*****************************************************/

--UPDATE
UPDATE <tableName> -- select tablename
SET <columnName>=<newValue> -- set new value
WHERE <columnName>=<newValue>; -- select where to make the change

UPDATE cats SET breed='New Breed'
WHERE breed='Tabby';
--Change tabby cats to shorthair:
UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';
--Another update:
UPDATE cats SET age=14 WHERE name='Misty';

--Examples
SELECT * FROM cats WHERE name='Jackson';
UPDATE cats SET name='Jack' WHERE name='Jackson';
SELECT * FROM cats WHERE name='Jackson';
SELECT * FROM cats WHERE name='Jack';
SELECT * FROM cats WHERE name='Ringo';
UPDATE cats SET breed='British Shorthair' WHERE name='Ringo';
SELECT * FROM cats WHERE name='Ringo';
SELECT * FROM cats;
SELECT * FROM cats WHERE breed='Maine Coon';
UPDATE cats SET age=12 WHERE breed='Maine Coon';
SELECT * FROM cats WHERE breed='Maine Coon';

/*****************************************************/

--DELETE

DELETE FROM cats WHERE name='Egg';
SELECT * FROM cats;
SELECT * FROM cats WHERE name='egg';
DELETE FROM cats WHERE name='egg';
SELECT * FROM cats;
DELETE FROM cats;

--Examples
SELECT * FROM cats WHERE age=4;
DELETE FROM cats WHERE age=4;
SELECT * FROM cats WHERE age=4;
SELECT * FROM cats;
SELECT *  FROM cats WHERE cat_id=age;
DELETE FROM cats WHERE cat_id=age;
DELETE FROM cats;
SELECT * FROM cats;

/*****************************************************/

SELECT database(); -- see current database
SHOW TABLES; -- see current table
SELECT * FROM shirts; -- see all from database
SHOW COLUMNS FROM shirts; -- see columns
DESC shirts; -- see description
