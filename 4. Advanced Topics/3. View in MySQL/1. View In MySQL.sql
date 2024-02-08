-- MySQL Views: Explanation and Examples

-- Functionality:
-- Views in MySQL are virtual tables that are based on the result set of a SELECT query.
-- They provide a way to simplify complex queries, encapsulate logic, and present data in a structured format.
-- Views do not store data themselves; they are stored queries that are executed dynamically when referenced.

-- Syntax for creating a view:
CREATE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE column1=1;

-- Advantages of using views:
-- 1. Simplify complex queries: Views allow you to define complex queries once and use them repeatedly.
-- 2. Data abstraction: Views can hide the complexity of underlying tables by providing a simplified interface.
-- 3. Security: Views can restrict access to specific columns or rows, providing a security layer.
-- 4. Encapsulation: Views encapsulate logic, making it easier to manage and maintain.

-- Disadvantages of using views:
-- 1. Performance: Views may introduce overhead as they execute the underlying query each time they are referenced.
-- 2. Limited functionality: Some operations, such as updates, deletes, and inserts, may be restricted on views.
-- 3. Dependency: Changes to underlying tables may impact views, potentially requiring updates to views.
-- 4. Complexity: Overuse of views can lead to complex query hierarchies, making maintenance challenging.

-- When to use views:
-- 1. Simplify complex queries: Use views to encapsulate complex logic and make queries more readable.
-- 2. Provide data abstraction: Use views to present a simplified view of the data to users or applications.
-- 3. Restrict access: Use views to control access to sensitive data or provide tailored views for different users.
-- 4. Centralize logic: Use views to centralize commonly used queries, reducing duplication and promoting consistency.

-- --------------------------------------------------------------------
-- Create employees table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    hire_date DATE NOT NULL
);

-- Insert sample data into employees table
INSERT INTO employees (username, last_name, first_name, salary, hire_date) VALUES
('john_doe', 'Doe', 'John', 50000.00, '2020-01-15'),
('jane_smith', 'Smith', 'Jane', 60000.00, '2019-05-20'),
('mike_jones', 'Jones', 'Mike', 55000.00, '2021-02-10'),
('alice_wang', 'Wang', 'Alice', 65000.00, '2020-09-30');
-- --------------------------------------------------------------------

