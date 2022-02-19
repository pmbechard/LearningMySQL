USE sql_store;

# SELECT
#     c.first_name AS customer,
#        p.name AS product
# FROM customers c
# CROSS JOIN products p
# ORDER BY c.first_name;

/*
 CROSS JOIN combines every entry in one table with every entry from another table
 Think itertools.combinations() style
 Above is the explicit syntax for a CROSS JOIN
 */

# SELECT
#     c.first_name AS customer,
#        p.name AS product
# FROM customers c, products p
# ORDER BY c.first_name;


/*
 This is the implicit syntax, which produces the same results as above.
 However, being explicit improves readability and clarifies intent
 */


 /*     EXERCISE    */

# Implicit
# SELECT
#     s.name AS shipper,
#     p.name AS product
# FROM shippers s, products p
# ORDER BY shipper;

# Explicit
SELECT
    s.name AS shipper,
    p.name AS product
FROM shippers s
CROSS JOIN products p
ORDER BY shipper;;
