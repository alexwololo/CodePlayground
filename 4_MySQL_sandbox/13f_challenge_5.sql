/*
+-----------+------------+
| genre     | avg_rating |
+-----------+------------+
| Animation |    7.86000 |
| Comedy    |    8.16250 |
| Drama     |    8.04375 |
+-----------+------------+
*/

SELECT genre, rating AS avg_rating
FROM series
JOIN reviews
ON series.id = reviews.series_id;

SELECT genre, AVG(rating) AS avg_rating
FROM series
JOIN reviews
ON series.id = reviews.series_id
GROUP BY genre;

-- ROUND(2) decimals to 2 decimals.
SELECT genre, ROUND(AVG(rating), 2) AS avg_rating
FROM series
JOIN reviews
ON series.id = reviews.series_id
GROUP BY genre;


