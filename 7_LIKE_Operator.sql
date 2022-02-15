-- USE sql_store;

-- SELECT *
-- FROM customers
-- WHERE last_name LIKE "b%";


/*
Gets all customers whose last anmes starts with 'b' (not case sensitive)
*/

-- SELECT *
-- FROM customers
-- WHERE last_name LIKE "brush%";


/*
% doesn't need to follow a single character
*/

-- SELECT *
-- FROM customers
-- WHERE last_name LIKE "%b%";


/*
% can be placed anywhere
This one returns all customers whose last name contains a 'b' anywhere in the name
including at the beginning and end
*/

-- SELECT *
-- FROM customers
-- WHERE last_name LIKE "%y";


/*
% can be placed anywhere
This one returns all customers whose last name ends with 'y'
*/

-- SELECT *
-- FROM customers
-- WHERE last_name LIKE "_____y";


/*
_ is used in the same way as %, but _ represents only a single character
This one uses 5 * _
*/

-- SELECT *
-- FROM customers
-- WHERE points LIKE "2__";


/*
_ is used in the same way as %, but _ represents only a single character
This one uses 2 * _ to return all customers who have points in the 200s
NOTE: Notice the use of quotes here
*/


/*		EXERCISE 1		*/

-- SELECT *
-- FROM customers
-- WHERE 
-- 	address LIKE "%trail%" OR 
-- 	address LIKE "%avenue%";


/*		EXERCISE 2		*/

-- SELECT *
-- FROM customers
-- WHERE phone LIKE "%9";

SELECT *
FROM customers
WHERE phone NOT LIKE "%9";

/*
Final Note: can also use NOT operator with LIKE
*/