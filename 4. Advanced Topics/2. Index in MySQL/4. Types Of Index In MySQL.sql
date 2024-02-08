/*
*Types of INDEX:-
1. Unique indexes – use unique indexes to ensure distinct values stored in a column.
2. Prefix indexes – show you how to use the prefix index to create an index for a character string column.
3. Invisible indexes – cover the index visibility and show you how to make an index visible or invisible.
4. Descending indexes –  show you how to use descending indexes to increase query performance.
5. Composite indexes – illustrate the application of composite indexes and show you when to use them to speed up your queries.
6. Clustered indexes – explain the clustered indexes in InnoDB tables.
7. Index cardinality – explain the index cardinality and show you how to view it using the show indexes command.
8. Functional index – learn how to create an index based on the result of an expression or function.


*/

-- Create employees table
CREATE TABLE employeesIndex (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    hire_date DATE NOT NULL
);

-- Insert sample data into employees table
INSERT INTO employeesIndex (username, last_name, first_name, salary, hire_date) VALUES
('john_doe', 'Doe', 'John', 50000.00, '2020-01-15'),
('jane_smith', 'Smith', 'Jane', 60000.00, '2019-05-20'),
('mike_jones', 'Jones', 'Mike', 55000.00, '2021-02-10'),
('alice_wang', 'Wang', 'Alice', 65000.00, '2020-09-30');

-- -------------------------------------------------------


-- Unique Indexes: Ensure distinct values stored in a column.
-- Function: Ensures that values in the column are unique.
-- Syntax: CREATE UNIQUE INDEX index_name ON table_name (column_name);
-- When to Use: Use when you need to enforce uniqueness for a column.
-- Example:
CREATE UNIQUE INDEX idx_username ON employeesIndex (username);

-- Prefix Indexes: Create an index for a character string column with a specific prefix length.
-- Function: Indexes the first N characters of a column.
-- Syntax: CREATE INDEX index_name ON table_name (column_name(length));
-- When to Use: Useful for optimizing queries that only need to match the first part of the column value.
-- Example:
CREATE INDEX idx_prefix_last_name ON employeesIndex (last_name(5));

-- Invisible Indexes: Make an index hidden from the query planner without dropping it.
-- Function: Index remains intact but is not used by the query optimizer.
-- Syntax: ALTER TABLE table_name ALTER INDEX index_name INVISIBLE;
-- When to Use: To temporarily disable an index without dropping it.
-- Example:
ALTER TABLE employeesIndex ALTER INDEX idx_salary INVISIBLE;

-- Descending Indexes: Increase query performance when sorting data in descending order.
-- Function: Optimizes sorting in descending order.
-- Syntax: CREATE INDEX index_name ON table_name (column_name DESC);
-- When to Use: Useful for optimizing queries that frequently sort data in descending order.
-- Example:
CREATE INDEX idx_salary_desc ON employeesIndex (salary DESC);

-- Composite Indexes: Speed up queries involving multiple columns by creating an index on those columns together.
-- Function: Indexes combinations of columns.
-- Syntax: CREATE INDEX index_name ON table_name (column1, column2, ...);
-- When to Use: Use when queries involve multiple columns in filter or join conditions.
-- Example:
CREATE INDEX idx_last_first ON employeesIndex (last_name, first_name);

-- Clustered Indexes: Improve performance for primary key lookups and range queries.
-- Function: Data is physically stored in the order of the index.
-- When to Use: Often used for primary key indexes in InnoDB tables.
-- Note: In InnoDB, the primary key is clustered by default.
-- Example:
ALTER TABLE employeesIndex ADD PRIMARY KEY (id);

-- Index Cardinality: View the number of unique values in an indexed column.
-- Function: Provides insights into index selectivity.
-- Syntax: SHOW INDEX FROM table_name;
-- When to Use: Helps in query optimization by understanding the uniqueness of values in an index.
-- Example:
SHOW INDEX FROM employeesIndex;

-- Functional Index: Create an index based on the result of an expression or function applied to a column.
-- Function: Indexes the result of a function or expression.
-- Syntax: CREATE INDEX index_name ON table_name (function(column_name));
-- When to Use: Useful for indexing computed values or applying functions in queries.
-- Example:
CREATE INDEX idx_upper_last_name ON employeesIndex ((year(hire_date)));-- use 2 (( )) else you will get error.



