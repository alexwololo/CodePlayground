-- selects the book from the earliest year
SELECT MIN(released_year)
FROM books;

SELECT MAX(released_year) FROM books;

-- selects the book with least pages
SELECT MIN(pages) FROM books;

-- Find the longest book
SELECT MAX(pages)
FROM books;

SELECT MAX(released_year)
FROM books;

SELECT MAX(pages), title
FROM books;

-- the title of the longest book?
-- OPTION A includes a subquery - its 2 querys & take more time than option B
SELECT * FROM books
WHERE pages = (SELECT Min(pages)
                FROM books);

SELECT * FROM books
WHERE pages = (SELECT Min(pages)
                FROM books);

SELECT title, pages FROM books
WHERE pages = (SELECT Max(pages)
                FROM books);

SELECT title, pages FROM books
WHERE pages = (SELECT Min(pages)
                FROM books);

-- OPTION B
SELECT * FROM books
ORDER BY pages ASC LIMIT 1;

SELECT title, pages FROM books
ORDER BY pages ASC LIMIT 1;

SELECT * FROM books
ORDER BY pages DESC LIMIT 1;

-- Using Min and Max with Group By
-- Find the year each author published their first book
SELECT author_fname,
       author_lname,
       Min(released_year)
FROM   books
GROUP  BY author_lname,
          author_fname;

-- Find the longest page count for each author
SELECT
  author_fname,
  author_lname,
  Max(pages)
FROM books
GROUP BY author_lname,
         author_fname;

-- same as above but uses aliases
SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname,
         author_fname;
