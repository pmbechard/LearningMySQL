-- USE sql_store; 

/*
USE is for selecting a database to query
You can also double-click the database in the SCHEMAS tab to select a database for use
Keywords are not case senstive but it is best practice to use uppercase keywords and lowercase names
*/

-- SELECT *
-- FROM customers;

/*
Display all information (*) of a given table (customers)
SELECT clause and FROM clause and 
Shift-Ctrl-Enter --> shortcut for executing script
*/

-- SELECT *
-- FROM customers
-- WHERE customer_id = 1;

/*
WHERE clause can be used to filter results
*/

-- SELECT *
-- FROM customers
-- ORDER BY first_name;

-- SELECT *
-- FROM customers
-- ORDER BY first_name DESC;

/*
ORDER BY clause can be used to filter results
Can add ASC or DESC to end of ORDER BY clause to specify sort order
*/


/*
Order of clauses matters - whitespace between them does not
I.e., you could put all clauses on a single line, but you cannot rearrange the order of them
*/

