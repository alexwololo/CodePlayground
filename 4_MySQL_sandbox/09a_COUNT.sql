-- How many books are in the database?
SELECT COUNT(*) FROM books;

-- How many author_fnames? BUT if multple fnames then answer is wrong
SELECT COUNT(author_fname) FROM books;

-- How many DISTINCT author_fnames? Answer still wrong if there is duplicates
SELECT COUNT(DISTINCT author_fname) FROM books;

-- To get correct answer we do this
SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;

-- How many titles contain "the"?
SELECT COUNT(*) FROM books
WHERE title LIKE '%the%';




SELECT title FROM books WHERE title LIKE '%the%';

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
