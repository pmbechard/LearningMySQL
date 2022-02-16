USE sql_hr;

SELECT e1.first_name, e1.last_name, e2.first_name, e2.last_name
FROM employees AS e1
JOIN employees AS e2 ON e1.reports_to = e2.employee_id;

/*
You can also join a table to itself
You may want to use this in a table that has keys that references other entries in the same table
E.g., in sql_hr.employees, there is a 'reports_to' column that shows who each employee's manager is,
but the managers and employees are all shown as employees in the same table
*/
