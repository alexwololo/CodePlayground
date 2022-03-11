--CREATE databases
CREATE DATABASE database_name;

--An example:
CREATE DATABASE soap_store;

/***********************************************/

--SHOW all databases
show databases;

--SELECT and use an existing database
USE <database_name>
--example
USE sandbox

--SEE current database
SELECT database();

/***********************************************/

--To drop/delete a database:
DROP DATABASE database_name;

--For Example:
DROP DATABASE hello_world_db;

--Remember to be careful with this command! Once you drop a database, it's gone!

/***********************************************/

/***********************************************/

--CREATE tables
CREATE TABLE tablename
  (
    column_name data_type,
    column_name data_type
  );
CREATE TABLE cats
  (
    name VARCHAR(100),
    age INT
  );

----------

--Dropping Tables
DROP TABLE <tablename>;
--example:
DROP TABLE cats;
--Be careful with this command!


/***********************************************/

CREATE TABLE pastries
  (
    name VARCHAR(50),
    quantity INT
  );

SHOW TABLES;
DESC pastries;
DROP TABLE pastries;

/***********************************************/

--TEST current content
SHOW TABLES;
SHOW COLUMNS FROM tablename;
DESC tablename;
--SHOW content of table
SELECT * FROM tablename;

-- examples w db = shirts
SELECT database(); -- see current database
SHOW TABLES; -- see current table
SELECT * FROM shirts; -- see all from database
SHOW COLUMNS FROM shirts; -- see columns
DESC shirts; -- see description
