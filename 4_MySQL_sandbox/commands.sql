/*********************************************/

SELECT          -- hämtar data från en databas.
UPDATE          -- uppdaterar data från en databas
DELETE          -- raderar data från en databas.
INSERT INTO     -- lägger till data i en databas.
CREATE DATABASE -- skapar en databas.
ALTER DATABASE  -- modifierar en databas.
CREATE TABLE    -- skapar en tabell.
ALTER TABLE     -- modifierar en tabell.
DROP TABLE      -- raderar en tabell.
CREATE INDEX    -- skapar ett index.
DROP INDEX      -- tar bor ett index.

CREATE INDEX                   -- skapar ett index.
DROP INDEX                     -- tar bor ett index
SHOW DATABASES;                -- show databases
USE <database name>;           -- use database
SHOW COLUMNS FROM <tablename>; -- show columns
DESC <tablename>;              -- describe

/*********************************************/

-- 1 DATABASE
CREATE DATABASE sandbox;
  show databases;
  use sandbox;
  SELECT database();

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
    cat_id  INT NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100),
    age     INT,
    PRIMARY KEY (cat_id)
);
INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);

SELECT * FROM unique_cats2

-- PRIMARY KEY alternate version
CREATE TABLE unique_cats2 (
    cat_id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name    VARCHAR(100),
    age     INT,
);

-- FOREIGN KEY
CREATE TABLE unique_cats2 (
    cat_id  INT NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100),
    age     INT,
    x_id    INT,
    PRIMARY KEY (cat_id),
    FOREIGN KEY(x_id) REFERENCES xs(id)

);


--UPDATE
UPDATE <tableName> -- select tablename
SET <columnName>=<newValue> -- set new value
WHERE <columnName>=<newValue>; -- select where to make the change


--Dropping Tables
DROP TABLE <tablename>;
DROP TABLE table_1;

-- Dropping database
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
