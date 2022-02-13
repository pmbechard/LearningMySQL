-- USE sql_store;

-- SELECT *
-- FROM customers
-- WHERE birth_date > "1990-01-01" AND points > 1000;

/*
Use AND to combine conditions
Both conditions need to be true
*/

-- SELECT *
-- FROM customers
-- WHERE birth_date > "1990-01-01" OR points > 1000;

/*
Use OR to combine conditions
Only one condition needs to be true
*/

-- SELECT *
-- FROM customers
-- WHERE birth_date > "1990-01-01" OR points > 1000 AND state = "VA";

/*
Use AND and OR together for more specific results
When combining mulitple logical operators, be aware of the order of the operators
Order of operators: AND is first
Parentheses can be used to change logic an improve readability 
*/

-- SELECT *
-- FROM customers
-- WHERE NOT (birth_date > "1990-01-01" OR points > 1000);

/*
Use NOT to negate results
*/

-- SELECT *
-- FROM customers
-- WHERE birth_date <= "1990-01-01" AND points <= 1000;

/*
Same as above but simplified for readability
*/


/*	EXERCISE	*/
-- USE sql_store; 

SELECT *
FROM order_items
WHERE order_id = 6 AND unit_price * quantity > 30;
