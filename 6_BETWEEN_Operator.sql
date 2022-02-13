-- USE  sql_store;

-- SELECT *
-- FROM customers
-- WHERE points >= 1000 AND points <= 3000;

/*
If comparing an attribute with a range of values, use the BETWEEN
operator to make code shorter and cleaner
*/

-- SELECT *
-- FROM customers
-- WHERE points BETWEEN 1000 AND 3000;

/*
Displays same output as above
NOTE: range values with BETWEEN are INCLUSIVE
*/

/*		EXERCISE	*/

SELECT *
FROM customers
WHERE birth_date BETWEEN "1990-01-01" AND "2000-01-01";