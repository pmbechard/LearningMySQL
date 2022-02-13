-- USE sql_store;

-- SELECT *
-- FROM customers
-- WHERE state = "VA" OR state = "GA" or state = "FL";

/*
This method is a bit tedious; this is where IN is useful
*/

-- SELECT *
-- FROM customers
-- WHERE state IN ("VA", "GA", "FL");

/*
This produces the same result as above
*/

-- SELECT *
-- FROM customers
-- WHERE state NOT IN ("VA", "GA", "FL");

/*
Can also use the NOT operator with IN
*/


/*	EXERCISE	*/

SELECT *
FROM products
WHERE quantity_in_stock IN 	(49, 38, 72);