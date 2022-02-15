-- USE sql_store;

-- SELECT *
-- FROM customers;

/*
Notice that customers here are sorted by customer_id
It is the Primary Key - it uniquely identifies each row in the table
*/

-- SELECT *
-- FROM customers
-- ORDER BY first_name;

/*
This behaviour can be overridden with the ORDER BY clause
*/

-- SELECT *
-- FROM customers
-- ORDER BY first_name DESC;

/*
Use DESC for reverse sorting
*/

-- SELECT *
-- FROM customers
-- ORDER BY state, first_name;

/*
You can sort by mulitple parameter
Here it is first by state, then by first name
*/

-- SELECT *
-- FROM customers
-- ORDER BY state DESC, first_name;

/*
You can also use reverse sorting with mulitple parameters
*/

-- SELECT first_name, last_name
-- FROM customers
-- ORDER BY birth_date;

/*
Unlike other SQL DBMSs, MySQL allows you to sort by columns that are not specifically 
selected in the SELECT clause
Note that birth_date does not appear after SELECT
*/

-- SELECT first_name, last_name
-- FROM customers
-- ORDER BY 1, 2;


/*
This means order by values in the first column and then the second
Not a recommended strategy
*/


/*		EXERCISE	*/

SELECT *, quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC