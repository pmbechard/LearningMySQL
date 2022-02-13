-- USE sql_store;

-- SELECT *
-- FROM customers
-- WHERE points > 3000;

/*
WHERE provides a condition for filtering results
>, <, >=, <=, =, != or <>
*/

-- SELECT *
-- FROM customers
-- WHERE state = "VA";

/*
String values should be written in single or double quotes
*/

-- SELECT *
-- FROM customers
-- WHERE state = "va";

/*
NOTE: string values are NOT case senstive
This produces the same result as above
*/

-- SELECT *
-- FROM customers
-- WHERE state <> "va";

-- SELECT *
-- FROM customers
-- WHERE state != "va";

/*
These two produce the same result using the two inequality operators
*/

-- SELECT *
-- FROM customers
-- WHERE birth_date > "1990-01-01";

/*
Dates can also be used as a point of comparison
Dates should be surrounded by quotes
Take note of the standard format for dates in MySQL:
	YYYY-MM-DD
*/


/* EXERCISE	*/

USE sql_store;
SELECT *
FROM orders
WHERE order_date >= "2019-01-01";