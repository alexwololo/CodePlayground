/*
+------------+-----------+-------+-----+-----+---------+----------+
| first_name | last_name | COUNT | MIN | MAX | AVG     | STATUS   |
+------------+-----------+-------+-----+-----+---------+----------+
| Thomas     | Stoneman  |     5 | 7.0 | 9.5 | 8.02000 | ACTIVE   |
| Wyatt      | Skaggs    |     9 | 5.5 | 9.3 | 7.80000 | ACTIVE   |
| Kimbra     | Masters   |     9 | 6.8 | 9.0 | 7.98889 | ACTIVE   |
| Domingo    | Cortes    |    10 | 5.8 | 9.1 | 7.83000 | ACTIVE   |
| Colt       | Steele    |    10 | 4.5 | 9.9 | 8.77000 | ACTIVE   |
| Pinkie     | Petit     |     4 | 4.3 | 8.8 | 7.25000 | ACTIVE   |
| Marlon     | Crafford  |     0 | 0.0 | 0.0 | 0.00000 | INACTIVE |
+------------+-----------+-------+-----+-----+---------+----------+
*/

SELECT *
FROM reviewers
JOIN reviews
ON reviewers.id = reviews.reviewer_id;

-- LEFT JOIN
SELECT *
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id;

-- select and add columns to display
-- use AVG, AS, MIN, MAX
-- group by reviewers.id since it has uniqe id
SELECT
  first_name,
  last_name,
  COUNT(rating) AS 'COUNT',
  MIN(rating) AS MIN,
  MAX(rating) AS MAX,
  AVG(rating) AS 'AVG'

FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

-- change all nulls to show as 0
SELECT
  first_name,
  last_name,
  COUNT(rating) AS 'COUNT',
  IFNULL(MIN(rating), 0) AS MIN,
  IFNULL(MAX(rating), 0) AS MAX,
  IFNULL(AVG(rating), 0) AS 'AVG'

FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

-- ROUND(2) decimals to 2 decimals.
SELECT
  first_name,
  last_name,
  COUNT(rating) AS 'COUNT',
  IFNULL(MIN(rating), 0) AS MIN,
  IFNULL(MAX(rating), 0) AS MAX,
  ROUND(IFNULL(AVG(rating), 0), 2) AS 'AVG'
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

-- add CASE STATEMENT
SELECT
  first_name,
  last_name,
  COUNT(rating) AS 'COUNT',
  IFNULL(MIN(rating), 0) AS MIN,
  IFNULL(MAX(rating), 0) AS MAX,
  ROUND(IFNULL(AVG(rating), 0), 2) AS 'AVG',
  CASE
    WHEN COUNT = 0 THEN 'INACTIVE'
    ELSE 'ACTIVE'
  END AS STATUS
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

-- change to use IF statement
SELECT
  first_name,
  last_name,
  COUNT(rating) AS 'COUNT',
  IFNULL(MIN(rating), 0) AS MIN,
  IFNULL(MAX(rating), 0) AS MAX,
  ROUND(IFNULL(AVG(rating), 0), 2) AS 'AVG',
  IF(COUNT(rating) = 0, 'ACTIVE', 'INACTIVE') AS STATUS
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

-- alternative with poweruser with an ELSE statement
SELECT first_name,
       last_name,
       Count(rating)                    AS COUNT,
       Ifnull(Min(rating), 0)           AS MIN,
       Ifnull(Max(rating), 0)           AS MAX,
       Round(Ifnull(Avg(rating), 0), 2) AS AVG,
       CASE
         WHEN Count(rating) >= 10 THEN 'POWER USER'
         WHEN Count(rating) > 0 THEN 'ACTIVE'
         ELSE 'INACTIVE'
       end                              AS STATUS
FROM   reviewers
       LEFT JOIN reviews
              ON reviewers.id = reviews.reviewer_id
GROUP  BY reviewers.id;
