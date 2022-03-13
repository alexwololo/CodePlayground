-- 1 DATABASE
CREATE DATABASE sandbox;
  show databases;
  use sandbox;

-- 2 TABLE
CREATE TABLE table_1
(
  column_1 varchar(100),
  column_2 int
);
  DESC table_1;

-- 3 COLUMN
INSERT INTO table_name(column_name) VALUES (data);
--For example:
INSERT INTO cats(name, age) VALUES ('Jetson', 7);
--multiple insert
INSERT INTO table_name
            (column_name, column_name)
VALUES      (value, value),
            (value, value),
            (value, value);

--DEFAULT Values
--Define a table with a DEFAULT name specified:
CREATE TABLE cats3
  (
    name VARCHAR(20) DEFAULT 'no name provided',
    age INT DEFAULT 99
  );


--PRIMARY KEY
CREATE TABLE unique_cats2 (
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);
INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);

SELECT * FROM unique_cats2




--UPDATE
UPDATE <tableName> -- select tablename
SET <columnName>=<newValue> -- set new value
WHERE <columnName>=<newValue>; -- select where to make the change


--Dropping Tables
DROP TABLE <tablename>;
DROP TABLE table_1;

-- Droppind database
DROP DATABASE <database_name>;
DROP DATABASE sandbox;


/*********************************************/
-- Kontrollfråga
-- examples w db = shirts
SELECT database(); -- see current database
SHOW TABLES; -- see current table
SELECT * FROM shirts; -- see all from database
SHOW COLUMNS FROM shirts; -- see columns
DESC shirts; -- see description

/*********************************************/







SELECT -- hämtar data från en databas.
SELECT database(); -- select database
UPDATE -- uppdaterar data från en databas.
DELETE -- raderar data från en databas.
ALTER DATABASE -- modifierar en databas.
CREATE TABLE -- skapar en tabell.
CREATE TABLE tablename -- create tables
  (
    column_name data_type,
    column_name data_type
  );
CREATE TABLE cats
  (
    name VARCHAR(100),
    age INT
  );
ALTER TABLE -- modifierar en tabell.
DROP TABLE <tablename> -- raderar en tabell
CREATE INDEX -- skapar ett index.
DROP INDEX -- tar bor ett index.

SHOW DATABASES; -- show databases
USE <database name>; -- use database
USE dog_walking_app; -- example:
SHOW COLUMNS FROM <tablename>; -- show columns
SHOW COLUMNS FROM cats;
DESC <tablename>; -- describe
DESC cats;
