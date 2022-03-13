https://dev.mysql.com/doc/refman/8.0/en/string-functions.html#function_replace

-- REPLACE(str,from_str,to_str)
-- Returns the string str with all occurrences of the string from_str replaced by the string to_str. REPLACE() performs a case-sensitive match when searching for from_str.

mysql> SELECT REPLACE('www.mysql.com', 'w', 'Ww');
        -> 'WwWwWw.mysql.com'
--This function is multibyte safe.





SELECT REPLACE('Hello World', 'Hell', '%$#@');
%$#@o World

SELECT REPLACE('Hello World', 'l', '7');
He77o Wor7d

SELECT REPLACE('Hello World', 'o', '0');
Hell0 W0rld

SELECT REPLACE('HellO World', 'o', '*');
HellO W*rld -- * is case sensitive

SELECT
  REPLACE('cheese bread coffee milk', ' ', ' and ');
cheese and bread and coffee and milk

SELECT REPLACE(title, 'e ', '3') FROM books;
Th3Namesake
Nors3Mythology


-- SELECT
--    CONCAT
--    (
--        SUBSTRING(title, 1, 10),
--        '...'
--    ) AS 'short title'
-- FROM books;

SELECT
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10)
FROM books;

SELECT
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'weird string'
FROM books;


Notes:
- Use cmd + /  (mac) or ctrl + /  (pc) to comment out SQL in c9.
- The REPLACE() function, as well as the other string functions, only change the query output, they don't affect the actual data in the database.
