-- Example: Creating a view to display employee details with a specific salary range.
CREATE VIEW vw_employee_salary_range AS
SELECT id, first_name, last_name, salary
FROM employees
WHERE salary BETWEEN 50000 AND 70000;

-- Usage: Once the view is created, it can be queried like a regular table.
SELECT * FROM vw_employee_salary_range;