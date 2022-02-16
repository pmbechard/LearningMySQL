-- USE sql_store;

-- SELECT *
-- FROM order_items oi
-- JOIN sql_inventory.products p ON oi.product_id = p.product_id;


/*
Note the lack of AS in giving aliases above
To join acorss databases, simply prefix the table after JOIN with the database name
*/

USE sql_inventory;

SELECT *
FROM sql_store.order_items oi
JOIN products p ON oi.product_id = p.product_id;


/*
Same thing but using sql_inventory as the home database now
Therefore, only prefix tables that are not part of the current database
*/