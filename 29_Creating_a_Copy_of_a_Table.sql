USE sql_store;

CREATE TABLE orders_archive AS
SELECT * FROM orders;


/*
 Just say we want to created an orders_archive based on completed orders from the
 orders table. Instead of doing this row-by-row, we can copy the table.
 NOTE: Primary Key and Auto Increment features are not carried over.
 */

TRUNCATE TABLE orders_archive;

/*
 Use TRUNCATE TABLE to delete all rows in a table
 */

INSERT INTO orders_archive
SELECT *
FROM orders
WHERE order_date < '2019-01-01';


/*
 Use this method to copy a subset of a table rather than an entire table.
 SELECT can be used as a sub-query in an INSERT statement.
 */


 /*     EXERCISE    */

USE sql_invoicing;
CREATE TABLE invoices_archive AS
SELECT
       i.invoice_id,
       i.number,
       c.name AS client,
       i.invoice_total,
       i.invoice_date,
       i.payment_date,
       i.due_date
FROM invoices i
JOIN clients c USING (client_id)
WHERE i.payment_date IS NOT NULL;