
-- Sum all pages in the entire database
SELECT SUM(pages)
FROM books;

-- sum up all released years to one number
SELECT SUM(released_year) FROM books;

-- Sum all pages each author has written
SELECT author_fname,
       author_lname,
       Sum(pages)
FROM books
GROUP BY
    author_lname,
    author_fname;

SELECT author_fname,
       author_lname,
       Sum(released_year)
FROM books
GROUP BY
    author_lname,
    author_fname;
