-- UPDATE:-
-- Used to modify any existing values in the table, we cannot modify column names using this command.
# updating single value
UPDATE emp
set sal=9000
where empno=7369;

#Updating Multiple Values of same row
update emp
set comm=200,sal=1000
where empno=7369;


# Updating all rows of same column
update sagar.dept set deptno=10; -- it wont get execute because it will change all the values of the column 
-- always use where clause along with update 

# BULK UPDATE
-- When updating multiple rows with different values it is much quicker to use a bulk update.
UPDATE SAGAR.DEPT
SET  LOC=
 (CASE DEPTNO WHEN 10 THEN 'A'
              WHEN 20 THEN 'B'
              WHEN 30 THEN 'C'
              WHEN 40 THEN 'D'
 END)
WHERE DEPTNO IN (10,20,30,40);

#UPDATE with ORDER BY and LIMIT
-- If the ORDER BY clause is specified in your update SQL statement, the rows are updated in the order that is specified.
-- If LIMIT clause is specified in your SQL statement, that places a limit on the number of rows that can be updated.
-- There is no limit, if LIMIT clause not specified.
-- ORDER BY and LIMIT cannot be used for multi table update.
-- # Syntax for the MySQL UPDATE with ORDER BY and LIMIT is,
-- UPDATE [ LOW_PRIORITY ] [ IGNORE ]
-- tableName
-- SET column1 = expression1,
-- column2 = expression2,
-- ...
-- [WHERE conditions]
-- [ORDER BY expression [ ASC | DESC ]]
-- [LIMIT row_count];

-- Example
UPDATE SAGAR.DEPT SET DNAME='SAGAR' ORDER BY LOC LIMIT 3;
-- In the above example, 3 rows will be updated according to the order of LOC.

# Multiple Table UPDATE:-
-- In multiple table UPDATE, it updates rows in each specified tables that satisfy the conditions. 
-- Each matching row is updated once, even if it matches the conditions multiple times.
-- In multiple table UPDATE, ORDER BY and LIMIT cannot be used.
-- #Syntax for multi table UPDATE is:-
-- UPDATE [LOW_PRIORITY] [IGNORE]
-- table1, table2, ...
-- SET column1 = expression1,
-- column2 = expression2,
-- ...
-- [WHERE conditions]

UPDATE sagar.Emp,sagar.Dept
SET dept.loc = 'sagar',
     emp.sal=1000000
WHERE dept.deptno = emp.deptno
AND dept.deptno = 10 AND emp.deptno = 10;




