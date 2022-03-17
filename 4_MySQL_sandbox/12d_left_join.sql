--  Note: please see here for an animated visual of how left/right joins work.
-- https://dataschool.com/how-to-teach-people-sql/left-right-join-animated/
-- LEFT JOINS
-- Left Join
/*
Customers on the left, orders on the right. We take all in customers, left side AND inner section.
*/

SELECT * FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;


SELECT first_name, last_name, order_date, amount
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;


SELECT
    first_name,
    last_name,
    IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;
