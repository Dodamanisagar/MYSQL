-- It is used to remove a particular record from the Table.
-- SYNTAX:-
 -- DELETE FROM table_name
 -- [WHERE STMT];
 
 # Delete all rows from a table
 
 DELETE FROM DEPT;  -- Gives error because we are tring to delete records without any where clause.
 
 -- Delete with Where clause
 DELETE FROM dept
 WHERE LOC='B'; 
  -- or 
 DELETE FROM `dept` WHERE `DNAME` = 'SAGAR';
 
 -- LIMITing deletes
 DELETE FROM `emp` WHERE `DEPTNO` = '10' LIMIT 1;