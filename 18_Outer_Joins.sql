-- USE sql_store;

-- SELECT c.customer_id, c.first_name, o.order_id
-- FROM customers c
-- JOIN orders o 
-- 	ON c.customer_id = o.customer_id
-- ORDER BY c.customer_id;

/*
Above is an INNER JOIN
When you use the JOIN keyword, MySQL automatically interprets it as INNER JOIN
This shows all customers currently with an order, 
	but what if we want to see all customers, even those without an order?
*/

-- SELECT c.customer_id, c.first_name, o.order_id
-- FROM customers c
-- LEFT JOIN orders o 
-- 	ON c.customer_id = o.customer_id
-- ORDER BY c.customer_id;

/*
Outer Joins: can be LEFT (OUTER) JOIN or RIGHT (OUTER) JOIN
	OUTER is optional, same as INNER
LEFT - all rows from the 'left' table (in this case, customers) are returned
RIGHT - all rows from the 'right' table (in this case, orders) are returned
This results shows customers from the customers table whether the condition is met or not
The ones that did not meet the condition are show to have an order_id of NULL
*/

/*		EXERCISE	*/

SELECT p.product_id, p.name, oi.quantity
FROM order_items oi
RIGHT JOIN products p
	ON oi.product_id = p.product_id
