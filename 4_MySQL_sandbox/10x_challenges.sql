CODE: Data Types Exercises Solution
What's a good use case for CHAR?
------
Used for text that we know has a fixed length, e.g., State abbreviations,
abbreviated company names, sex M/F, etc.

CREATE TABLE inventory (
    item_name VARCHAR(100),
    price DECIMAL(8,2),
    quantity INT
);

What's the difference between DATETIME and TIMESTAMP?
------
They both store datetime information, but there's a difference in the range,
TIMESTAMP has a smaller range. TIMESTAMP also takes up less space.
TIMESTAMP is used for things like meta-data about when something is created
or updated.

SELECT CURTIME();

SELECT CURDATE()';

SELECT DAYOFWEEK(CURDATE());
SELECT DAYOFWEEK(NOW());
SELECT DATE_FORMAT(NOW(), '%w') + 1;

SELECT DAYNAME(NOW());
SELECT DATE_FORMAT(NOW(), '%W');

SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');

SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

CREATE TABLE tweets(
    content VARCHAR(140),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');
SELECT * FROM tweets;

INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'coltscat');
SELECT * FROM tweets;
