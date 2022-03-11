--Inserting Data

--The "formula":
INSERT INTO table_name(column_name) VALUES (data);
--For example:
INSERT INTO cats(name, age) VALUES ('Jetson', 7);

--multiple insert
INSERT INTO table_name
            (column_name, column_name)
VALUES      (value, value),
            (value, value),
            (value, value);

--using quotes inside inserted values
--Escape the quotes with a backslash:
"This text has \"quotes\" in it" or 'This text has \'quotes\' in it'

--Alternate single and double quotes:
"This text has 'quotes' in it" or 'This text has "quotes" in it'


/******************************************************/

--SHOW content of table
SELECT * FROM cats;

/******************************************************/

--NULL and NOT NULL Code
--Try inserting a cat without an age:
INSERT INTO cats(name) VALUES('Alabama');
SELECT * FROM cats;
--Try inserting a nameless and ageless cat:
INSERT INTO cats() VALUES();
--Define a new cats2 table with NOT NULL constraints:
CREATE TABLE cats2
  (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
  );
DESC cats2;
Now try inserting an ageless cat:
INSERT INTO cats2(name) VALUES('Texas');
--View the new warnings:
SHOW WARNINGS;
SELECT * FROM cats2;
--Do the same for a nameless cat:
INSERT INTO cats2(age) VALUES(7);
SHOW WARNINGS;

/******************************************************/

--Setting Default Values
--Define a table with a DEFAULT name specified:
CREATE TABLE cats3
  (
    name VARCHAR(20) DEFAULT 'no name provided',
    age INT DEFAULT 99
  );
--Notice the change when you describe the table:
DESC cats3;
--Insert a cat without a name:
INSERT INTO cats3(age) VALUES(13);
--Or a nameless, ageless cat:
INSERT INTO cats3() VALUES();
--Combine NOT NULL and DEFAULT:
CREATE TABLE cats4
  (
    name VARCHAR(20) NOT NULL DEFAULT 'unnamed',
    age INT NOT NULL DEFAULT 99
  );
--Notice The Difference:
INSERT INTO cats() VALUES();
SELECT * FROM cats;
INSERT INTO cats3() VALUES();
SELECT * FROM cats3;
INSERT INTO cats3(name, age) VALUES('Montana', NULL);
SELECT * FROM cats3;
INSERT INTO cats4(name, age) VALUES('Cali', NULL);

/******************************************************/

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
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);

SELECT * FROM unique_cats2

/******************************************************/

--MySQL Warnings Code
DESC cats;

--Try Inserting a cat with a super long name:
INSERT INTO cats(name, age)
VALUES('This is some text blah blah blah blah blah text text text something about cats lalalalal meowwwwwwwwwww', 10);

--Then view the warning:
SHOW WARNINGS;

--Try inserting a cat with incorrect data types:
INSERT INTO cats(name, age) VALUES('Lima', 'dsfasdfdas');

--Then view the warning:
SHOW WARNINGS;

/******************************************************/



--EXAMPLE 1:
CREATE TABLE people
  (
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
  );
INSERT INTO people(first_name, last_name, age)
VALUES ('Tina', 'Belcher', 13);

INSERT INTO people(age, last_name, first_name)
VALUES (42, 'Belcher', 'Bob');

INSERT INTO people(first_name, last_name, age)
VALUES            ('Linda', 'Belcher', 45),
                  ('Phillip', 'Frond', 38),
                  ('Calvin', 'Fischoeder', 70);

DROP TABLE people;
SELECT * FROM people;
show tables;
--END



--EXAMPLE 2:
--Defining The employees table:
CREATE TABLE employees (
    id INT AUTO_INCREMENT NOT NULL,
    first_name      VARCHAR(255) NOT NULL,
    last_name       VARCHAR(255) NOT NULL,
    middle_name     VARCHAR(255),
    age             INT NOT NULL,
    current_status  VARCHAR(255) NOT NULL DEFAULT 'employed',
    PRIMARY KEY(id)
);


--Another way of defining a primary key:
CREATE TABLE employees (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name     VARCHAR(255) NOT NULL,
    last_name      VARCHAR(255) NOT NULL,
    middle_name    VARCHAR(255),
    age            INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed'
);

--A test INSERT:
INSERT INTO employees (first_name, last_name, age)
VALUES                ('Dora', 'Smith', 58);
