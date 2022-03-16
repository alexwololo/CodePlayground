-- Print the number of books in the database
SELECT COUNT(*) FROM books;

-- Print out how many books were released in each year
SELECT COUNT(*) FROM books GROUP BY released_year;

-- Print out the total number of books in stock
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

-- Find the average released_year for each author
SELECT Sum(stock_quantity) FROM BOOKS;

-- Find the full name of the author who wrote the longest book
SELECT AVG(released_year) FROM books GROUP BY author_lname, author_fname;

--
SELECT author_fname, author_lname, AVG(released_year) FROM books GROUP BY author_lname, author_fname;

--
SELECT CONCAT(author_fname, ' ', author_lname) FROM books
WHERE pages = (SELECT Max(pages) FROM books);

--
SELECT CONCAT(author_fname, ' ', author_lname) FROM books
ORDER BY pages DESC LIMIT 1;

--
SELECT pages, CONCAT(author_fname, ' ', author_lname) FROM books
ORDER BY pages DESC;

--
SELECT released_year AS year,
    COUNT(*) AS '# of books',
    AVG(pages) AS 'avg pages'
FROM books
    GROUP BY released_year;
