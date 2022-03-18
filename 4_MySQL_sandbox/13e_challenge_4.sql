/*
+-----------------------+
| unreviewed_series     |
+-----------------------+
| Malcolm In The Middle |
| Pushing Daisies       |
+-----------------------+
*/

-- step 1 find all matches
SELECT title, rating
FROM series
JOIN reviews
ON series.id = reviews.series_id

-- step 2 left join to include title w/o rating (where rating = null)
SELECT title, rating
FROM series
LEFT JOIN reviews
ON series.id = reviews.series_id

-- step 3 display only titles w AS and value of null
SELECT title AS unreview_series
FROM series
LEFT JOIN reviews
ON series.id = reviews.series_id
WHERE rating IS NULL;
