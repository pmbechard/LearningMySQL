-- USE sql_store;

-- SELECT *
-- FROM orders o
-- JOIN customers c
-- 	ON o.customer_id = c.customer_id;

/*
Simplify this using implicit JOIN syntax
*/

SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;

/*
Same as above, but using implicit JOIN syntax
*/