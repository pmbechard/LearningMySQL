-- USE sql_store;

-- SELECT 
-- 	o.order_id, 
-- 	c.first_name, 
--     c.last_name, 
--     o.order_date, 
--     os.name
-- FROM orders o
-- JOIN customers c ON o.customer_id = c.customer_id
-- JOIN order_statuses os ON o.status = os.order_status_id

/*
Use multiple JOIN clauses to join multiple tables
*/


/*		EXERCISE	*/
USE sql_invoicing;

SELECT c.name, p.amount, p.date, pm.name, i.invoice_total
FROM payments p
JOIN clients c ON p.client_id = c.client_id
JOIN payment_methods pm ON p.payment_method = pm.payment_method_id
JOIN invoices i ON p.invoice_id = i.invoice_id;
