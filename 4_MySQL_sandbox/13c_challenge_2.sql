/*
Show avg rating and dont show duplicates or null

+----------------------+------------+
| title                | avg_rating |
+----------------------+------------+
| General Hospital     |    5.38000 |
| Bob's Burgers        |    7.52000 |
| Seinfeld             |    7.60000 |
| Bojack Horseman      |    7.94000 |
| Arrested Development |    8.08000 |
| Curb Your Enthusiasm |    8.12000 |
| Archer               |    8.12000 |
| Freaks and Geeks     |    8.60000 |
| Stranger Things      |    8.76667 |
| Breaking Bad         |    9.36000 |
| Fargo                |    9.40000 |
| Halt and Catch Fire  |    9.90000 |
+----------------------+------------+
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

-- add series.id to get uniqe ids incase 2 items with same name
SELECT series.id, title, AVG(rating) AS 'avg_rating'
FROM series
JOIN reviews
ON series.id = reviews.series_id

-- add group and order by AND remove series.id from beeing shown
SELECT title, AVG(rating) AS 'avg_rating'
FROM series
JOIN reviews
ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY avg_rating;
