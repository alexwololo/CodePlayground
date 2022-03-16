-- CODE: Better Searches with LIKE

-- There's a book I'm looking for...
-- But I can't remember the title!
-- I know the author's first name is David...
-- Or wait, maybe it's Dan...or Dave

-- this shows everything
SELECT title, author_fname FROM books WHERE author_fname LIKE '%';

-- "I want names that CONTAINS da "
SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';

-- "I want names that START with da "
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';

-- "I want names that ENDS with da "
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';

-- that is 4 underscores.
WHERE stock_quantity LIKE '____'

-- displays all items that has stock containing 2 number, so 10 - 99
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';

SELECT title FROM books WHERE  title LIKE 'the';

SELECT title FROM books WHERE  title LIKE '%the';

SELECT title FROM books WHERE title LIKE '%the%';

-- I'm searching for a book with a '%' in it = \%
WHERE title LIKE '%\%%'

-- I'm searching for a book with an '_' in it = \_
WHERE title LIKE '%\_%'

(235)234-0987 LIKE '(___)___-____';

