USE sql_store;

SELECT 
	o.order_id,
    c.first_name
FROM orders o
NATURAL JOIN customers c


/*
With NATURAL JOIN, MySQL determines where the point of comparison should be based on
the column names in both tables
Easy to use, but not recommended; can produce unexpected results
*/