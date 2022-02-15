-- USE sql_store; 

-- SELECT * 
-- FROM customers
-- LIMIT 3;

/*
LIMIT limits the number of results returned
If the value after LIMIT is greater than the numbe rof results,
all results are returned
*/

-- SELECT * 
-- FROM customers
-- LIMIT 6, 3;

/*
An offset argument can also be passed to LIMIT to inform MySQL to skip the first
# results before returning the specified number of results
This is useful for things like pagination
In this case, we skip the first 6 results and return the 3 following them
*/


/*		EXERCISE	*/

SELECT *
FROM customers
WHERE points > 2500
ORDER BY points DESC
LIMIT 3;

/*
NOTE: Take note of the order of the clauses here.
*/