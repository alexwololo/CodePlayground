/*
INT - WHOLE NUMBERS
DECIMAL - DECIMAL(13, 2)
DECIMAL(5, 2)
5 Digits -> 999.99 -> we CANNOT store a higher number then this
2 Digits -> .99

LIMITS
Number before decimal point can contain MAX 65 digits.
Number after decimal point can contain MAX 30 digits AND cannot be larger then the digit before the decimal.

But there's also FLOAT and DOUBLE
Store larger numbers using less space BUT (and it's a big BUT): It comes at the cost of precision

DataType  	MemoryNeeded	PrecisionIssues
FLOAT	      4 Bytes     	~7 digits (after seven digits)
DOUBLE	    8 Bytes	      ~15 digits (after 15 digits )

Use float or decimal, double is more precise than float.

*/

-- DECIMAL is exact

CREATE TABLE items(price DECIMAL(5,2));

INSERT INTO items(price) VALUES(7);        -- 7.00

INSERT INTO items(price) VALUES(7987654);  -- 999.99

INSERT INTO items(price) VALUES(34.88);    -- 34.88

INSERT INTO items(price) VALUES(298.9999); -- 299.00

INSERT INTO items(price) VALUES(1.9999);   -- 2.0

--

-- FLOAT & DOUBLE are approximations
SELECT * FROM items;

CREATE TABLE thingies (price FLOAT);

INSERT INTO thingies(price) VALUES (88.45);

SELECT * FROM thingies;

INSERT INTO thingies(price) VALUES (8877.45);

SELECT * FROM thingies;

INSERT INTO thingies(price) VALUES (8877665544.45);

SELECT * FROM thingies;
