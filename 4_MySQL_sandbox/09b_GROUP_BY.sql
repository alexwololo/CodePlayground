-- CODE: The Joys of Group By
-- "GROUP BY summarizes or aggregates identical data into single rows"

SELECT title, author_lname FROM books;

-- grupperar all titles on last name- they are grouped in a mega row
SELECT title, author_lname FROM books
GROUP BY author_lname;

-- count all books and sorting amount of books per author
SELECT author_lname, COUNT(*)
FROM books GROUP BY author_lname;

-- select all titles
SELECT title, author_fname, author_lname FROM books;

-- bad grouping
SELECT title, author_fname, author_lname FROM books GROUP BY author_lname;

-- COUNT* refers to grouped rows and count them
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;

-- because of same lastname we have to sort on both f and l name
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

-- selects released year column
SELECT released_year FROM books;

-- sorting and counting how many books have been released per year
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

-- In 2003 2 book(s) released
-- In 2016 1 book(s) released
-- In 2001 3 book(s) released
SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year FROM books GROUP BY released_year;
