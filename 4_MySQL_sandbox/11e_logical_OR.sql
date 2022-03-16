-- CODE: Logical OR

SELECT
    title,
    author_lname,
    released_year
FROM books
WHERE author_lname='Eggers' OR released_year > 2010;


SELECT 40 <= 100 OR -2 > 0;
-- true

SELECT 10 > 5 OR 5 = 5;
-- true

SELECT 'a' = 5 OR 3000 > 2000;
-- true

SELECT title,
       author_lname,
       released_year,
       stock_quantity
FROM   books
WHERE  author_lname = 'Eggers'
              OR released_year > 2010
OR     stock_quantity > 100;
