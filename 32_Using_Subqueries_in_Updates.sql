USE sql_invoicing;

UPDATE invoices
SET payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id = 3;

/*
 Here we update the entries for client_id 3, but what if we only have the name, and
 not the client id?
 */

UPDATE invoices
SET payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id =
    (SELECT client_id
    FROM clients
    WHERE name = 'Myworks');

/*
 This is how you can make the same update, but by using a name instead of a client id.
 But, what if we want to update multiple rows in the same way using a sub-query?
 */

UPDATE invoices
SET payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id IN
    (SELECT client_id
    FROM clients
    WHERE state IN ('NY', 'CA'));

/*
 We must use the IN operator rather than = here because the sub-query returns multiple
 results.
 NOTE: Always run your sub-queries first to ensure you're updating the correct results.
 */


/*      EXERCISE    */

USE sql_store;
UPDATE orders
SET comments = 'Gold customer'
WHERE customer_id IN
        (SELECT customer_id
        FROM customers
        WHERE points > 3000)