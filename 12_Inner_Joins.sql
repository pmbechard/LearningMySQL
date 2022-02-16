-- USE sql_store;

-- SELECT *
-- FROM orders
-- JOIN customers ON orders.customer_id = customers.customer_id;

/*
JOIN combines two tables based on some matching parameter (usually Foreign Key)
orders is shown first and then customers
INNER JOIN = JOIN but the INNER is implied and therefore unnecessary
INNER refers to tables within the same data base
*/

-- SELECT order_id, first_name, last_name
-- FROM orders
-- JOIN customers ON orders.customer_id = customers.customer_id;

/*
Results can be narrowed using specific SELECT arguments
*/

-- SELECT customer_id, order_id, first_name, last_name
-- FROM orders
-- JOIN customers ON orders.customer_id = customers.customer_id;

/*
Error Code: 1052. Column 'customer_id' in field list is ambiguous
This happens because customer_id appears in both tables
*/

-- SELECT orders.customer_id, order_id, first_name, last_name
-- FROM orders
-- JOIN customers ON orders.customer_id = customers.customer_id;

/*
Error is fixed by prefixing the ambiguous column with the table name and the . operator
*/

-- SELECT o.customer_id, order_id, first_name, last_name
-- FROM orders AS o
-- JOIN customers AS c ON o.customer_id = c.customer_id;

/*
Can provide aliases for simplification
*/

/*		EXERCISE	*/

SELECT order_id, o.product_id, p.name, quantity, o.unit_price
FROM order_items AS o
JOIN products AS p ON o.product_id = p.product_id