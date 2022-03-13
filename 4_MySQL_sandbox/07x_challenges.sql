-- Q1 Reverse and Uppercase the following sentence:
-- "Why does my cat look at me with such hatred?"
SELECT REVERSE (UPPER('Why does my cat look at me with such hatred?'));

-- Q2 What does this print out?
-- A: I-like-cats

SELECT
  REPLACE
  (
  CONCAT('I', ' ', 'like', ' ', 'cats'),
  ' ',
  '-'
  );


-- Q3 Replace spaces in titles with '->'
SELECT REPLACE(titles, ' ', '->') AS title FROM table_1;

+--------------------------------------------------------------+
| title                                                        |
+--------------------------------------------------------------+
 The->Namesake
 Norse->Mythology
 American->Gods


-- Q4 Print This Out

+----------------+----------------+
| forwards       | backwards      |
+----------------+----------------+
| Lahiri         | irihaL         |
| Gaiman         | namiaG         |
| Gaiman         | namiaG

SELECT author_lname AS forwards,
  REVERSE(author_lname) AS backwards
FROM books;


-- Q5 full name in caps
+----------------------+
| full name in caps    |
+----------------------+
| JHUMPA LAHIRI        |
| NEIL GAIMAN          |
| NEIL GAIMAN

SELECT
  UPPER(CONCAT (author_fname, ' ', author_lname)) AS 'full name in caps'

FROM books;


-- Q6 make this
+-------------------------------------------------------------+
| blurb                                                       |+--------------------------------------------------------------+
| The Namesake was released in 2003                           |
| Norse Mythology was released in 2016                        |
| American Gods was released in 2001                          |

SELECT
   CONCAT(title, ' was released in ', released_year) AS blurb
FROM books;



-- Q7 make this
+------------------------------------+-----------------+
| title                              | character count |
+------------------------------------+-----------------+
| The Namesake                       |              12 |
| Norse Mythology                    |              15 |
| American Gods                      |              13 |

SELECT title, CHAR_LENGTH(title) AS 'character count'
FROM books;


-- Q8 do this
+---------------+-------------+--------------+
| short title   | author      | quantity     |
+---------------+-------------+--------------+
| American G... | Gaiman,Neil | 12 in stock  |
| A Heartbre... | Eggers,Dave | 104 in stock |
+---------------+-------------+--------------+
