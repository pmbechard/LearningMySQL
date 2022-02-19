USE sql_invoicing;

UPDATE invoices
SET payment_total = 10, payment_date = '2019-03-01'
WHERE invoice_id = 1;


/*
 UPDATE accepts the table to be modified
 SET accepts the columns to be modified
 WHERE accepts the conditions that specify which rows should be modified
 */

UPDATE invoices
SET payment_total = DEFAULT, payment_date = DEFAULT
WHERE invoice_id = 1;


 /*
 Use this to return values to default, reverting the above changes
  */

UPDATE invoices
SET payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE invoice_id = 3;

/*
 Variable values and/or arithmetic expressions can be used to determine values.
 */

