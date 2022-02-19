USE sql_store;

INSERT INTO customers
VALUES (
        DEFAULT,
        'John',
        'Smith',
        '1990-01-01',
        NULL,
        '123 Street Ave',
        'San Francisco',
        'CA',
        DEFAULT);


/*
 Use INSERT INTO to define a new row in a table
 Use the VALUES keyword before inputting values for each column
 Use DEFAULT keyword for default values and auto incrementation
 Use NULL to leave out value where permitted
 DEFAULT will result in NULL in some instances, making the two interchangeable
 Since we are only supplying values for 6/9 columns, there is a simpler way
    to do this... see below
 */

INSERT INTO customers (first_name, last_name, birth_date, address, city, state)
VALUES ('John', 'Smith', '1990-01-01', '123 Street Ave', 'San Francisco', 'CA');

/*
 Same as above but simplified by only including columns that are relevant to the
 creation of this row.
 With this method, you can also reorder the columns - i.e., they don't have to be in
 the same order as in the table. However, the VALUES must line up with whatever
 order is listed in the INSERT INTO clause.
 */