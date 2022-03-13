https://dev.mysql.com/doc/refman/8.0/en/string-functions.html#function_reverse

-- REVERSE(str)
-- Returns the string str with the order of the characters reversed.

mysql> SELECT REVERSE('abc');
        -> 'cba'
-- This function is multibyte safe.


SELECT REVERSE('Hello World');
dlroW olleH

SELECT REVERSE('meow meow');
woem woem

SELECT REVERSE(author_fname) FROM books;
apmuhJ
lieN
lieN

SELECT CONCAT('woof', REVERSE('woof'));
wooffoow

SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;
JhumpaapmuhJ
NeillieN
NeillieN
