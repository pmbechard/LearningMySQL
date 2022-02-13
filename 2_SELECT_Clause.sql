-- USE sql_store;

-- SELECT first_name, last_name
-- FROM customers;

/*
You can specify which columns you'd like to display rather than all information (*)
The order the columns are typed is the order that they're displayed
*/

-- SELECT 
-- 	first_name, 
--     last_name, 
--     points / 100
-- FROM customers;

/*
If working with mulitple columns, they can be separated by line for readability
Arithmetic expressions can be used on numerical values (+, -, *, /, %)
Follows order of operations from math - can use parentheses
*/

-- SELECT 
-- 	first_name, 
--     last_name, 
--     points / 100 AS new_points
-- FROM customers;

/*
Use the AS keyword to provide an alias int he output
*/

-- SELECT 
-- 	first_name, 
--     last_name, 
--     points / 100 AS "New Points"
-- FROM customers;

/*
If you want to have a space in the name, you have to surround it in single or double quotes
*/

-- SELECT state
-- FROM customers;

/*
NOTE: Changed customer (id=1) state from MA to VA for example
To do this: 
	select table icon from table in SCHEMAS menu to open data
    double-click data to be changed
    change data
    press Apply in bottom-right corner of window
    confirm
Now there is a duplicate value in the results
*/

-- SELECT DISTINCT state
-- FROM customers;

/*
Using DISTINCT keyword removes duplicates from results
*/


/*	EXERCISE 1	*/

USE sql_store;

SELECT 
	name,
    unit_price,
    unit_price * 1.1 AS new_price
FROM products;
