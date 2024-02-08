/*
What is MySQL INDEX? :-
- An index is a data structure that improves the speed of data retrieval operations on a database table at the cost of additional writes and storage space.
- It allows the database server to quickly find rows in a table based on the values of certain columns.
- When you create a table with a primary key or unique key, MySQL automatically creates a special index named PRIMARY. This index is called the clustered index.
- The PRIMARY index is special because the index itself is stored together with the data in the same table. 
- indexes other than the PRIMARY index are called secondary indexes or non-clustered indexes.

HOW TO CREATE A INDEX IN MYSQL?
- we can create indexes for a table at the time of creation. 
- For example, the following statement creates a new table with an index that consists of two columns c2 and c3.
*/
CREATE TABLE indexing(
   c1 INT PRIMARY KEY,
   c2 INT NOT NULL,
   c3 INT NOT NULL,
   c4 VARCHAR(10),
   INDEX (c2,c3) 
);

/*
- To add an index for a column or a set of columns, you use the CREATE INDEX statement as follows:
CREATE INDEX index_name 
ON table_name (column_list)
*/
CREATE INDEX idx_c4 ON indexing(c4);

-- By default, MySQL creates the B-Tree index if you don’t specify the index type.

-- before creating Index:-
explain
SELECT 
    employeeNumber, 
    lastName, 
    firstName
FROM
    classicmodels.employees
WHERE
    jobTitle = 'Sales Rep';
 
 -- Create index job_Title
create index job_Title
on classicmodels.employees(jobTitle);

-- After creating Index:-
explain
SELECT 
    employeeNumber, 
    lastName, 
    firstName
FROM
    classicmodels.employees
WHERE
    jobTitle = 'Sales Rep';

-- Showing all index:-
show index from classicmodels.employees;