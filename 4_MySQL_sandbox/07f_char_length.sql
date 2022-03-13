https://dev.mysql.com/doc/refman/8.0/en/string-functions.html#function_char-length

--CHAR_LENGTH(str)

--Returns the length of the string str, measured in characters. A multibyte character counts as a single character. This means that for a string containing five 2-byte characters, LENGTH() returns 10, whereas CHAR_LENGTH() returns 5.

--CHARACTER_LENGTH(str)
--CHARACTER_LENGTH() is a synonym for CHAR_LENGTH().

SELECT CHAR_LENGTH('Hello World');
11

SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
Lahiri,6
Gaiman,6
Gaiman,6

SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;
Lahiri is 6 characters long
Gaiman is 6 characters long
Gaiman is 6 characters long
