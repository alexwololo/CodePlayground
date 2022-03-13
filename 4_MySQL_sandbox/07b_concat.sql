https://dev.mysql.com/doc/refman/5.7/en/string-functions.html


-- CONCAT Return concatenated string

-- For quoted strings, concatenation can be performed by placing the strings next to each other:
mysql> SELECT 'My' 'S' 'QL';
        -> 'MySQL'


-- CONCAT() returns NULL if any argument is NULL.
mysql> SELECT CONCAT('My', 'S', 'QL');
        -> 'MySQL'
mysql> SELECT CONCAT('My', NULL, 'QL');
        -> NULL
mysql> SELECT CONCAT(14.3);
        -> '14.3'


-- CONCAT_WS(separator,str1,str2,...)

-- CONCAT_WS() stands for Concatenate With Separator and is a special form of CONCAT(). The first argument is the separator for the rest of the arguments. The separator is added between the strings to be concatenated. The separator can be a string, as can the rest of the arguments. If the separator is NULL, the result is NULL. CONCAT_WS() does not skip empty strings. However, it does skip any NULL values after the separator argument.

mysql> SELECT CONCAT_WS(',','First name','Second name','Last Name');
        -> 'First name,Second name,Last Name'
mysql> SELECT CONCAT_WS(',','First name',NULL,'Last Name');
        -> 'First name,Last Name'








SELECT author_fname, author_lname FROM books;

CONCAT(x,y,z) -- from slides

CONCAT(column, anotherColumn) -- from slides

CONCAT(author_fname, author_lname)

CONCAT(column, 'text', anotherColumn, 'more text')

CONCAT(author_fname, ' ', author_lname)

CONCAT(author_fname, author_lname); // invalid syntax

SELECT CONCAT('Hello', 'World');
HelloWorld

SELECT CONCAT('Hello', '...', 'World');
Hello...World

SELECT
  CONCAT(author_fname, ' ', author_lname)
FROM books;
Jhumpa Lahiri
Neil Gaiman
Neil Gaiman

SELECT
  CONCAT(author_fname, ' ', author_lname)
  AS 'full name'
FROM books;
Jhumpa Lahiri
Neil Gaiman
Neil Gaiman


SELECT author_fname AS first, author_lname AS last,
  CONCAT(author_fname, ' ', author_lname) AS full
FROM books;
Jhumpa,Lahiri,Jhumpa Lahiri
Neil,Gaiman,Neil Gaiman
Neil,Gaiman,Neil Gaiman


SELECT author_fname AS first, author_lname AS last,
  CONCAT(author_fname, ', ', author_lname) AS full
FROM books;
Jhumpa,Lahiri,"Jhumpa, Lahiri"
Neil,Gaiman,"Neil, Gaiman"
Neil,Gaiman,"Neil, Gaiman"


SELECT CONCAT(title, '-', author_fname, '-', author_lname) FROM books;
The Namesake-Jhumpa-Lahiri
Norse Mythology-Neil-Gaiman
American Gods-Neil-Gaiman


SELECT
    CONCAT_WS(' - ', title, author_fname, author_lname)
FROM books;
The Namesake - Jhumpa - Lahiri
Norse Mythology - Neil - Gaiman
American Gods - Neil - Gaiman
