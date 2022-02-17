-- USE sql_store;

SELECT *
FROM order_items oi
JOIN order_item_notes oin 
	ON oi.order_id = oin.order_id 
	AND oi.product_id = oin.product_id;


/*
Join tables on multiple conditions
Useful when using composite keys (i.e. multiple keys making up a primary key)
(No results - bad example)
*/