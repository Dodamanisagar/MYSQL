/*
GROUP BY clause:-
* It is used to group the records.
* Group by clause executes row by row.
* After the execution of group by clause we get groups.
* Therefore any clause that executes after group by must execute group by group. 
* the column_name or expression used in grouping can be used in select clause. 
* group by clause can be used without using where clause. 

*syntax:-
SELECT group_by_expression / group_function
FROM Ttable_name
[WHERE <filter_condition>]
GROUP BY column_name/expression;

*order of excecution:-
1-FROM
2-WHERE(If used) [row_by_row]
3-GROUP BY       [row_by_row]
4-SELECT         [group_by_group]
*/

-- WAQTD number of employees working In each dept
SELECT COUNT(*)
FROM EMP
GROUP BY DEPTNO;

-- WAQTD number of employees working in each dept except the employee working as analyst
SELECT DEPTNO,COUNT(*)
FROM EMP
WHERE JOB NOT IN('ANALYST')
GROUP BY DEPTNO;

-- WAQTD maximum salary given to each job
SELECT JOB,MAX(SAL)
FROM EMP
GROUP BY JOB;

-- WAQTD number of employees working in each job if the employees have character 'A' in their names
SELECT JOB,COUNT(*)
FROM EMP
WHERE ENAME LIKE '%A%'
GROUP BY JOB;

-- WAQTD number of emloyees getting commission in each dept. 
SELECT DEPTNO,COUNT(*)
FROM EMP
WHERE COMM IS NOT NULL
GROUP BY DEPTNO; -- THIS WILL GIVE DIFFERENT ANSWER 

-- CORRECT ANSWER
SELECT DEPTNO,COUNT(COMM)
FROM EMP
GROUP BY DEPTNO;

-- WAQTD number of employees working in each departement except president.
SELECT DEPTNO,COUNT(DEPTNO)
FROM EMP
WHERE JOB NOT IN('PRESDENT')
GROUP BY DEPTNO;

SELECT DEPTNO,COUNT(*)
FROM EMP
WHERE JOB NOT IN('PRESDENT')
GROUP BY DEPTNO;

-- WAQTD total salary needed to pay all the employees in each job.
SELECT  JOB,SUM(SAL)
FROM EMP
GROUP BY JOB;

-- WAQTD number of employeees working as manager in each department.
SELECT DEPTNO,COUNT(*)
FROM EMP
WHERE JOB='MANAGER'
GROUP BY DEPTNO;

-- WAQTD avg salary needed to pay all the employees in each department excluding the employees of deptno 20.
SELECT DEPTNO,AVG(SAL)
FROM EMP
WHERE DEPTNO NOT IN(20)
GROUP BY DEPTNO;

-- WAQTD number of employees having character 'a' in their names in each job.
SELECT JOB,COUNT(*)
FROM EMP
WHERE ENAME LIKE '%A%'
GROUP BY JOB;

-- WAQTD number of employees and avg salary needed to pay the employees who salary in greater than 2000 in each dept.
SELECT DEPTNO,COUNT(*), AVG(SAL)
FROM EMP
WHERE SAL>2000
GROUP BY DEPTNO;

-- WAQTD total salary needed to pay and number of salesmans in each dept.
SELECT DEPTNO,SUM(SAL),COUNT(*)
FROM EMP
WHERE JOB='SALESMAN'
GROUP BY DEPTNO;

-- WAQTD number of employees with their maximum salaries in each job.
SELECT JOB,MAX(SAL),COUNT(*)
FROM EMP
GROUP BY JOB;

-- WAQTD maximum salaries given to an employee working in each dept.
SELECT DEPTNO,MAX(SAL)
FROM EMP
GROUP BY DEPTNO;

-- WAQTD number of times the salaries present in employee table.
SELECT SAL,COUNT(SAL)
FROM EMP
GROUP BY SAL; 
