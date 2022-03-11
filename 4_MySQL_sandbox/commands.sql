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


/*********************************************/


-- Kontrollfråga
SHOW TABLES;
SHOW COLUMNS FROM tablename;
DESC tablename; -- shows null
SELECT * FROM tablename;

/*********************************************/
