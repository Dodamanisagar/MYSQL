-- Explanation of SQL Query: 
SHOW FULL TABLES IN database_Name WHERE table_type='VIEW';

-- Functionality:
-- This query is used to show a list of all views in the database named 'mysql_tutorial'.

-- Syntax breakdown:
-- 1. SHOW FULL TABLES: This statement is used to display a list of tables and their types.
-- 2. IN database_Name: Specifies the database name 'mysql_tutorial' where the query should be executed.
-- 3. WHERE table_type='VIEW': Filters the results to show only views.

-- Example Usage:
SHOW FULL TABLES IN mysql_tutorial WHERE table_type='VIEW';

-- Example Output:
-- This query will return a list of views in the 'mysql_tutorial' database along with their names and types.


-- ---------------------------------------------------------------------------


-- MySQL Show View –  Using INFORMATION_SCHEMA database:-
-- The information_schema database provides access to MySQL database metadata such as databases, tables, data types of columns, or privileges. 
-- The information schema is also known as a database dictionary or system catalog.
-- To show the views of a database, you use the tables table from the information_schema database:
SELECT * 
FROM information_schema.tables;
