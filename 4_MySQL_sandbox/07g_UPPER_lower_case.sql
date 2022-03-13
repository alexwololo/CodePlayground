https://dev.mysql.com/doc/refman/8.0/en/string-functions.html#function_lower

LOWER(str)

-- Returns the string str with all characters changed to lowercase according to the current character set mapping. The default is utf8mb4.

mysql> SELECT LOWER('QUADRATICALLY');
        -> 'quadratically'
-- LOWER() (and UPPER()) are ineffective when applied to binary strings (BINARY, VARBINARY, BLOB). To perform lettercase conversion of a binary string, first convert it to a nonbinary string using a character set appropriate for the data stored in the string:

mysql> SET @str = BINARY 'New York';
mysql> SELECT LOWER(@str), LOWER(CONVERT(@str USING utf8mb4));
+-------------+------------------------------------+
| LOWER(@str) | LOWER(CONVERT(@str USING utf8mb4)) |
+-------------+------------------------------------+
| New York    | new york                           |
+-------------+------------------------------------+
-- For collations of Unicode character sets, LOWER() and UPPER() work according to the Unicode Collation Algorithm (UCA) version in the collation name, if there is one, and UCA 4.0.0 if no version is specified. For example, utf8mb4_0900_ai_ci and utf8_unicode_520_ci work according to UCA 9.0.0 and 5.2.0, respectively, whereas utf8_unicode_ci works according to UCA 4.0.0. See Section 10.10.1, “Unicode Character Sets”.
-- This function is multibyte safe.
-- LCASE() used within views is rewritten as LOWER().




https://dev.mysql.com/doc/refman/8.0/en/string-functions.html#function_upper

UPPER(str)

-- Returns the string str with all characters changed to uppercase according to the current character set mapping. The default is utf8mb4.

mysql> SELECT UPPER('Hej');
        -> 'HEJ'
-- See the description of LOWER() for information that also applies to UPPER(). This included information about how to perform lettercase conversion of binary strings (BINARY, VARBINARY, BLOB) for which these functions are ineffective, and information about case folding for Unicode character sets.

-- This function is multibyte safe.

-- UCASE() used within views is rewritten as UPPER().


SELECT UPPER('Hello World');
HELLO WORLD

SELECT LOWER('Hello World');
hello world

SELECT UPPER(title) FROM books;
THE NAMESAKE
NORSE MYTHOLOGY
AMERICAN GODS

SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;
MY FAVORITE BOOK IS THE NAMESAKE
MY FAVORITE BOOK IS NORSE MYTHOLOGY
MY FAVORITE BOOK IS AMERICAN GODS

SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;
MY FAVORITE BOOK IS the namesake
MY FAVORITE BOOK IS norse mythology
MY FAVORITE BOOK IS american gods
