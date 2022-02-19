USE sql_invoicing;

UPDATE invoices
SET payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id = 3;


/*
 Updating multiple rows using the same syntax as single rows except that the conditional
 expression in the WHERE clause is more general, allowing for more rows.
 MySQL Workbench will stop this from happening because it runs automatically in safe mode.
 To get around this, you can go to Preferences -> SQL Editor -> De/select "Safe Updates"
 */


 /*     EXERCISE    */

USE sql_store;
UPDATE customers
SET points = points + 50
WHERE birth_date < '1990-01-01';