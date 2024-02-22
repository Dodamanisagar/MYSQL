/*CROSS JOIN / CARTESIAN JOIN:-
-- IN cross join a records from table 1 will be merged with all the records of table 2.
-- The result set will include all rows from both tables, where each row is the combination of the row in the first table with the row in the second table.
-- In general, if each table has n and m rows respectively, the result set will have nxm rows.
SELECT * FROM t1
CROSS JOIN t2;
-- CROSS JOIN clause does not have a join predicate. In other words, it does not have the ON or USING clause.
-- If you add a WHERE clause, in case table t1 and t2 has a relationship, the CROSS JOIN works like the INNER JOIN clause as shown in the following query:
SELECT * FROM t1
CROSS JOIN t2
WHERE t1.id = t2.id;
*/

-- Retrieve a list of all employees' names and department names, using a cross join between the EMP and DEPT tables.
SELECT ENAME,DNAME
FROM EMP
CROSS JOIN DEPT;

-- Calculate the total salary expense for each department using a cross join and grouping.
SELECT SUM(SAL),DNAME
FROM EMP
CROSS JOIN DEPT
GROUP BY DNAME;

-- Retrieve all possible combinations of employees' names from EMP table using a cross join with itself.
SELECT E1.ENAME,E2.ENAME
FROM EMP E1
CROSS JOIN EMP E2;

-- Retrieve all combinations of employees and departments, but only for those employees with a salary greater than 2000.
SELECT ENAME,DNAME
FROM EMP
CROSS JOIN DEPT
WHERE SAL>2000;