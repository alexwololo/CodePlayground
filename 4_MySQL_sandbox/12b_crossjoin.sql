-- Finding Orders Placed By George: 2 Step Process

SELECT id FROM customers WHERE last_name='George';
SELECT * FROM orders WHERE customer_id = 1;
-- Finding Orders Placed By George: Using a subquery

SELECT * FROM orders WHERE customer_id =
    (
        SELECT id FROM customers
        WHERE last_name='George'
    );
-- Cross Join Craziness

SELECT * FROM customers, orders;


--

SELECT * FROM customers WHERE last_name='George';
SELECT id FROM customers WHERE last_name='George';
SELECT * FROM orders WHERE customer_id=1;
SELECT * FROM orders WHERE customer_id=1;

SELECT * FROM orders WHERE customer_id =
(
  SELECT id FROM customers
  WHERE last_name='George'
);

-- takes every customer and conjoining it w every order. Its pointless but its the most basic of joins.
SELECT * FROM customers, orders;
