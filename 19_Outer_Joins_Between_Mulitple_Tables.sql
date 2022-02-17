-- SELECT
-- 	c.customer_id,
--     c.first_name, 
--     c.last_name,
--     o.order_id,
--     sh.name AS shipper
-- FROM customers c
-- LEFT JOIN orders o
-- 	ON c.customer_id = o.customer_id
-- LEFT JOIN shippers sh
-- 	ON o.shipper_id = sh.shipper_id
-- ORDER BY c.customer_id;

/*
Join more tables in the same way
Note: Avoid using RIGHT JOIN as a best practice so that you're always adding to the left
*/

/*		EXERCISE	*/
SELECT
	o.order_date,
	o.order_id,
    c.first_name,
    c.last_name,
    sh.name AS shipper,
    os.name AS status
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
LEFT JOIN order_statuses os
	ON o.status = os.order_status_id
ORDER BY os.order_status_id