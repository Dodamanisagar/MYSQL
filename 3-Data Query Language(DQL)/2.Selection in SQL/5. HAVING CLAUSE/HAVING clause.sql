/*
* HAVING clause-
* Having clause is used to filter the group. 
* syntax:-
SELECT group_by_experession/group_function
FROM table
[WHERE<filter_condition>]
GROUP BY column_name/expression
HAVING <group_filter_condition>

*order of execution-
1-FROM
2-WHERE(If used) [row_by_row]
3-GROUP BY       [row_by_row]
4-HAVING(if used)[group_by_group]
5-SELECT         [group_by_group]

*differece between WHERE clause and HAVING clause:-
1)WHERE clause:-
*Where clause is used to Filter the records
*Where clause executes row By row.
*In Where Clause we cannot Use MRF()
*Where clause executes before Group by clause.

2)HAVING clause:-
*Having clause is used to Filter the groups.
*Having clause executes Group by group
*Can use MRF( ).
*Having clause executes After group by clause.
*/

-- WAQT find number of employees working in each dept if there are at least 3 employees in each dept
SELECT DEPTNO,COUNT(*)
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) >=3;

-- WAQTD the names that are repeated
SELECT ENAME,COUNT(*)
FROM EMP
GROUP BY ENAME
HAVING COUNT(*)>1;

-- WAQTD names that are repeated exactly twice
SELECT ENAME,COUNT(*)
FROM EMP
GROUP BY ENAME
HAVING COUNT(*)=2;

-- WAQTD the salary that is repeated
SELECT SAL,COUNT(*)
FROM EMP
GROUP BY SAL
HAVING COUNT(*)>1;

-- WAQTD number of emloyees working in each dept having at least 2 employees characters 'A' or 'S' in their names
SELECT DEPTNO,COUNT(*)
FROM EMP
WHERE  ENAME LIKE '%A' OR ENAME LIKE '%S'
GROUP BY DEPTNO
HAVING COUNT(*)>=2;

-- WAQTD job and total salary of each job, if the total salary of each job is greater than 3450
SELECT JOB,SUM(SAL) AS TOTAL_SAL
FROM EMP
GROUP BY JOB
HAVING SUM(SAL)>3450;

-- WAQTD job and total salary of the employees if the emplyees are earning more than 1500
SELECT JOB,SUM(SAL) AS TOTA_SAL
FROM EMP
WHERE SAL>1500
GROUP BY JOB;

-- WAQTD job wise maximum salary if the maximum salary of each job exceeds 2000
SELECT JOB,MAX(SAL)
FROM EMP
GROUP BY JOB
HAVING MAX(SAL)>2000;

-- WAQTD number of emp earning sal more than 1200 in each job and the total sal needed to pay employee of each job must exceeds 3800
SELECT JOB,SUM(SAL) AS TOTAL_SAL,COUNT(*)
FROM EMP
WHERE SAL>1200
GROUP BY JOB
HAVING SUM(SAL)>3800;

-- WAQTD deptno and number of employee working in each dept if there are atleast 2 clerk in each dept
SELECT DEPTNO,COUNT(*)
FROM EMP
WHERE JOB='CLERK'
GROUP BY DEPTNO
HAVING COUNT(*)>=2;

-- WAQTD dno and total saalary needed to pay all emp in each dept if there are atleast 4 emp in each dept
SELECT DEPTNO,SUM(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*)>=4;

-- WAQTD number of emp earning sal more than 1200 in each job and the total sal needed to pay emp of each job must excees 3800
SELECT JOB,COUNT(*),SUM(SAL)
FROM EMP
WHERE SAL>1200
GROUP BY JOB 
HAVING SUM(SAL)>3800;

-- WAQTD deptno and number of emp working only if there are 2 emp working in each dept as manager.
SELECT DEPTNO,COUNT(*)
FROM EMP
WHERE JOB='MANAGER'
GROUP BY DEPTNO
HAVING COUNT(*)=2;

-- WAQTD job and max sal of emp in each job if the max sal exceeds 2600 
SELECT JOB,MAX(SAL)
FROM EMP
GROUP BY JOB
HAVING MAX(SAL)>2600;

-- WAQTD the salaries which are repeated in emp table
SELECT SAL,COUNT(*)
FROM EMP
GROUP BY SAL
HAVING COUNT(*)>1;

-- WAQTD the hiredate which are duplicated in emp table
SELECT HIREDATE,COUNT(*)
FROM EMP
GROUP BY HIREDATE
HAVING COUNT(*)>1;

-- WAQTD avg salary of each dept if avg sal is less than 3000
SELECT DEPTNO,AVG(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL)<3000;

-- WAQTD deptno if there are atleast 3 emp in each dept whos name has char 'a' or 's'.
SELECT DEPTNO
FROM EMP
WHERE ENAME LIKE '%A%' OR ENAME LIKE '%S%'
GROUP BY DEPTNO
HAVING COUNT(*)>=3;

-- WAQTD min and max salaries of each job if min sal is more than 1000 and max sal is less than 5000.
SELECT JOB,MIN(SAL),MAX(SAL)
FROM EMP
GROUP BY JOB
HAVING MIN(SAL)>1000 AND MAX(SAL)<5000;