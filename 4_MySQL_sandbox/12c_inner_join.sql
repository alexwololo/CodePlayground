-- CODE: Inner Joins
-- Note: please see here for an animated visual of how inner joins work.
-- https://dataschool.com/how-to-teach-people-sql/inner-join-animated/
-- https://dataschool.com/how-to-teach-people-sql/sql-join-types-explained-visually/


-- IMPLICIT INNER JOIN

SELECT * FROM customers, orders
WHERE customers.id = orders.customer_id;
-- IMPLICIT INNER JOIN

SELECT first_name, last_name, order_date, amount
FROM customers, orders
    WHERE customers.id = orders.customer_id;

-- EXPLICIT INNER JOINS

SELECT * FROM customers
JOIN orders
    ON customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount
FROM customers
JOIN orders
    ON customers.id = orders.customer_id;

SELECT *
FROM orders
JOIN customers
    ON customers.id = orders.customer_id;
-- ARBITRARY JOIN - meaningless, but still possible

SELECT * FROM customers
JOIN orders ON customers.id = orders.id;

-- sort on biggest spender
SELECT first_name, last_name, SUM(amount) AS total_spent
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;





-- Getting Fancier (Inner Joins Still)

SELECT first_name, last_name, order_date, amount
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
ORDER BY order_date;

SELECT
    first_name,
    last_name,
    SUM(amount) AS total_spent
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;




--







-- Implicit inner join, they join where they match
-- cross joins where customer table id = customerId of order
SELECT * FROM customers, orders
WHERE customers.id = orders.customer_id;

-- Implicit inner join, they join where they match
SELECT first_name, last_name, order_date, amount
FROM customers, orders
WHERE customers.id = orders.customer_id;

-- Explicit inner join, commonly used
SELECT * FROM customers
--we can write inner if we want
INNER JOIN orders
  ON customers.id = orders.customer_id;

-- Explicit inner join, commonly used
SELECT first_name, last_name, order_date, amount
FROM customers
JOIN orders
  ON customers.id = orders.customer_id;

SELECT * FROM customers
JOIN orders ON customers.id = order_id;
