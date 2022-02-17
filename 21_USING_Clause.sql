USE sql_store;

-- SELECT 
-- 	o.order_id, 
-- 	c.first_name
-- FROM orders o
-- JOIN customers c
-- 	ON o.customer_id = c.customer_id


/*
This query can be simplified with USING
*/

-- SELECT 
-- 	o.order_id, 
-- 	c.first_name
-- FROM orders o
-- JOIN customers c
-- 	USING (customer_id);



/*
If the column names in the condition after ON are the same, the query can be simplified
with the USING clause
Works the exact same with higher readability
*/

-- SELECT 
-- 	o.order_id, 
-- 	c.first_name,
--     sh.name AS shipper
-- FROM orders o
-- JOIN customers c
-- 	USING (customer_id)
-- LEFT JOIN shippers sh
-- 	USING (shipper_id)
    
/*
USING can also be used in outer joins
*/

-- SELECT 
-- 	o.order_id, 
-- 	c.first_name,
--     sh.name AS shipper,
--     os.name AS status
-- FROM orders o
-- JOIN customers c
-- 	USING (customer_id)
-- LEFT JOIN shippers sh
-- 	USING (shipper_id)
-- LEFT JOIN order_statuses os
-- 	ON o.status = os.order_status_id


/*
Note that the final JOIN must use ON because the column names are not
the same between the tables
*/

-- SELECT *
-- FROM order_items oi
-- JOIN order_item_notes oin
-- 	USING (order_id, product_id)
    
/*
Can also use ON with mulitple conditions
*/


/*		EXERCISE	*/

USE sql_invoicing;

SELECT 
	p.date,
    c.name AS client,
    p.amount,
    pm.name AS payment_method
FROM payments p
JOIN clients c
	USING (client_id)
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id;
