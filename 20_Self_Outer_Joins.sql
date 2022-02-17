USE sql_hr;

-- SELECT 
-- 	e.employee_id,
--     e.first_name,
-- 	m.first_name
-- FROM employees e
-- JOIN employees m
-- 	ON e.reports_to = m.employee_id;
    
/*
This query only returns employees who have a manager and therefore exlcudes the 'head'
of the company
*/

SELECT 
	e.employee_id,
    e.first_name,
	m.first_name as manager
FROM employees e
LEFT JOIN employees m
	ON e.reports_to = m.employee_id
ORDER BY manager;
    
/* 
Use a self outer join to display results of all employees, even if their 'reports_to'
column is NULL
*/