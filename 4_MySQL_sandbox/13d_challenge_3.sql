/*
+------------+-----------+--------+
| first_name | last_name | rating |
+------------+-----------+--------+
| Thomas     | Stoneman  |    8.0 |
| Thomas     | Stoneman  |    8.1 |
| Thomas     | Stoneman  |    7.0 |
| Thomas     | Stoneman  |    7.5 |
| Thomas     | Stoneman  |    9.5 |
| Wyatt      | Skaggs    |    7.5 |
| Wyatt      | Skaggs    |    7.6 |
| Wyatt      | Skaggs    |    9.3 |
| Wyatt      | Skaggs    |    6.5 |
| Wyatt      | Skaggs    |    8.4 |
| Wyatt      | Skaggs    |    9.1 |
| Wyatt      | Skaggs    |    7.8 |
| Wyatt      | Skaggs    |    5.5 |
| Wyatt      | Skaggs    |    8.5 |
| Kimbra     | Masters   |    8.5 |
| Kimbra     | Masters   |    8.0 |
| Kimbra     | Masters   |    7.1 |
| Kimbra     | Masters   |    7.8 |
| Kimbra     | Masters   |    9.0 |
| Kimbra     | Masters   |    7.8 |
+------------+-----------+--------+
*/

SELECT first_name, last_name, rating
FROM reviewers
JOIN reviews
ON reviewers.id = reviews.reviewer_id;

-- OR we can do this

SELECT first_name, last_name, rating
FROM reviews
JOIN reviewers
ON reviewers.id = reviews.reviewer_id;
