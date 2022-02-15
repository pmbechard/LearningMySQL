-- USE sql_store;

-- SELECT * 
-- FROM customers
-- WHERE last_name LIKE "%field%";

/*
REGEXP can be used to simplify LIKE expressions or to create more
specific filters
*/

-- SELECT * 
-- FROM customers
-- WHERE last_name REGEXP "field";

/*
Same as above, but with REGEXP
*/

-- SELECT * 
-- FROM customers
-- WHERE last_name REGEXP "^brush";

/*
^ is used to indicate beginning of the string
*/

-- SELECT * 
-- FROM customers
-- WHERE last_name REGEXP "field$";

/*
$ is used to indicate end of the string
*/

-- SELECT * 
-- FROM customers
-- WHERE last_name REGEXP "field|mac|rose";

/*
Pipe | is or - this query searches for any last names containing 'field' or 'mac' or 'rose'
*/

-- SELECT * 
-- FROM customers
-- WHERE last_name REGEXP "field$|^mac|rose$";

/*
Pipe | is or - this query searches for any last names containing 'field' or 'mac' or 'rose'
| can be combined with ^ and/or $
*/

-- SELECT * 
-- FROM customers
-- WHERE last_name REGEXP "[gim]e";

/*
[] can be used to list options: i.e. this expression searches for last names with
'ge', 'ie', or 'me'
*/

-- SELECT * 
-- FROM customers
-- WHERE last_name REGEXP "e[bly]";

/*
[] can be used to list options: i.e. this expression searches for last names with
'eb', 'el', or 'ey'
*/

-- SELECT * 
-- FROM customers
-- WHERE last_name REGEXP "[a-h]e";

/*
[] can also accept a range of letters as options
*/


/*		EXERCISE		*/

-- SELECT *
-- FROM customers
-- WHERE first_name REGEXP "elka|ambur"

-- SELECT *
-- FROM customers
-- WHERE last_name REGEXP "ey$|on$"

-- SELECT *
-- FROM customers
-- WHERE last_name REGEXP "^my|se"

SELECT *
FROM customers
WHERE last_name REGEXP "b[ru]"