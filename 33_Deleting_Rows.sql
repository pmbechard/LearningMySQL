USE sql_invoicing;
DELETE FROM invoices
WHERE invoice_id =
    (SELECT *
    FROM clients
    WHERE name = 'Myworks');



/*
DELETE FROM clause accepts a table
Without any other clauses, this will remove all rows from a table.
Use a WHERE clause (and optionally a sub-query) to specify which rows should be deleted.
 */