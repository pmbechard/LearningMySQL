-- USE sql_store;

-- SELECT *
-- FROM customers
-- WHERE phone IS NULL;

/*
NULL repesents an absences of value, not a 0 value
*/

-- SELECT *
-- FROM customers
-- WHERE phone IS NOT NULL;

/*
NULL can also be used with NOT
*/

/*		EXERCISE	*/

SELECT * 
FROM orders
WHERE shipped_date IS NULL;