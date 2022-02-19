USE sql_store;

INSERT INTO shippers (name)
VALUES ('Shipper1'),
       ('Shipper2'),
       ('Shipper3');


/*
 To INSERT INTO multiple rows, simple list the values for each row in parentheses
 separated by commas
 */


/*      EXERCISE    */

INSERT INTO products (name, quantity_in_stock, unit_price)
VALUES ('Product1', 10, 9.99),
       ('Product2', 20, 19.99),
       ('Product3', 30, 29.99);