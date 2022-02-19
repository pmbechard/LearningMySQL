USE sql_store;

SELECT
        order_id,
        order_date,
        'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01'

UNION

SELECT
        order_id,
        order_date,
        'Archived' AS status
FROM orders
WHERE order_date < '2019-01-01';

/*
 Use the UNION Operator to combine results from multiple queries
 */

SELECT first_name
FROM customers
UNION
SELECT name
FROM shippers;

/*
 Can also combine data from multiple tables
 In this case, you must have the same number of columns in each query
 or else you will get an error
 Finally, the result of the column in the output will match the name of the
 column called upon on the first query
 */


 /*     EXERCISE    */

SELECT customer_id, first_name, points, 'Gold' AS type
FROM customers
WHERE points > 3000
UNION
SELECT customer_id, first_name, points, 'Silver' AS type
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT customer_id, first_name, points, 'Bronze' AS type
FROM customers
WHERE points < 2000
ORDER BY first_name;