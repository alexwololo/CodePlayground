/*
Join series table w reviews table that have been rated.

+----------------------+--------+
| title                | rating |
+----------------------+--------+
| Archer               |    8.0 |
| Archer               |    7.5 |
| Archer               |    8.5 |
| Archer               |    7.7 |
| Archer               |    8.9 |
| Arrested Development |    8.1 |
| Arrested Development |    6.0 |
| Arrested Development |    8.0 |
| Arrested Development |    8.4 |
| Arrested Development |    9.9 |
| Bob's Burgers        |    7.0 |
| Bob's Burgers        |    7.5 |
| Bob's Burgers        |    8.0 |
| Bob's Burgers        |    7.1 |
| Bob's Burgers        |    8.0 |
+----------------------+--------+
*/

-- start by selecting all
SELECT *
FROM series
JOIN reviews
ON series.id = reviews.series_id;

-- selecting title and rating
SELECT title, rating
FROM series
JOIN reviews
ON series.id = reviews.series_id;
-- LIMIT 10

-- We are displaying all matches where series.id is equal to the id of the seies table
