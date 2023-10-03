/*
*JOINS in SQL:-
-- The process of retrieval of data from multiple tables simultaneously is know as JOINS. 
-- Whenever the attributes is to be selected from both the tables we use JOINs. 
-- Type of joins in MYSQL:-
	1) Inner join
    2) Left join
    3) Right join
    4) Cross join
    5) Self join
    
1) INNER JOIN:-
-- It is used to obtain only Matching records or A records which has a pair. 
-- JOIN CONDITION:- It is a condition on which the tables are merged.
*/

-- WAQTD ename and dept name for all the employees
SELECT E.ENAME,D.DNAME
FROM EMP E
INNER JOIN DEPT D ON D.DEPTNO=E.DEPTNO;

-- WAQTD ename and loc for all the employees working as MANAGER
SELECT E.ENAME,D.LOC
FROM EMP E
INNER JOIN DEPT D ON E.DEPTNO=D.DEPTNO
WHERE JOB IN('MANAGER');

-- WAQTD ename, sal and dname of the employee working as clerk in dept 20 with a salary of more then 1000
SELECT ENAME,SAL,DNAME
FROM EMP
INNER JOIN DEPT USING(DEPTNO)
WHERE JOB='CLERK' AND EMP.DEPTNO=20 AND SAL>1000;

-- WAQTD ename, deptno dname and loc of thr employee earning more than 2000 in New York
SELECT ENAME,EMP.DEPTNO,DNAME,LOC
FROM EMP
INNER JOIN DEPT USING(DEPTNO)
WHERE SAL>2000 AND LOC='NEW YORK';

-- WAQTD name of the employee and his location of all the employees. 
SELECT ENAME,LOC 
FROM EMP
INNER JOIN DEPT USING(DEPTNO);

-- WAQTD dname and salary for all the employee working in accounting.
SELECT DNAME,SAL
FROM EMP
INNER JOIN DEPT USING(DEPTNO)
WHERE DNAME ='ACCOUNTING';

-- WAQTD dname and annual salary for all employees whos salary is more than 2340
SELECT DNAME,SAL*12
FROM EMP
INNER JOIN DEPT USING(DEPTNO)
WHERE SAL>2340;

-- WAQTD ename and dname for employees having caharacter 'a' in their dname
SELECT ENAME,DNAME
FROM EMP
INNER JOIN DEPT USING(DEPTNO)
WHERE DNAME LIKE '%A%';

-- WAQTD ename and dname for all the employees working as salesman
SELECT ENAME,DNAME
FROM EMP 
INNER JOIN DEPT USING(DEPTNO)
WHERE JOB='SALESMAN';

-- WAQTD dname and job for all the employees whos job and dname starts with character 's' 
SELECT DNAME,JOB
FROM EMP
INNER JOIN DEPT USING(DEPTNO)
WHERE DNAME LIKE 'S%' AND JOB LIKE'S%';

-- WAQTD dname and mgr no for employees reporting to 7839
SELECT DNAME,MGR
FROM EMP
INNER JOIN DEPT USING(DEPTNO)
WHERE MGR=7839;

-- WAQTD dname and hiredate for employees after 83 into accounting or research dept 
SELECT DNAME,HIREDATE
FROM EMP
INNER JOIN DEPT USING(DEPTNO)
WHERE HIREDATE>'1983-12-31' AND DNAME IN('ACCOUNTING','RESEARCH');

-- WAQTD ename and dname of the employees who are getting comm in dept 10 or 30 
SELECT ENAME,DNAME
FROM EMP
INNER JOIN DEPT USING(DEPTNO)
WHERE COMM IS NOT NULL AND DEPTNO IN(10,30);

-- WAQTD dname and empno for all the employees who's empno are (7839,7902) and are working in loc new york.
SELECT DNAME,EMPNO
FROM EMP
INNER JOIN DEPT USING(DEPTNO)
WHERE EMPNO IN(7839,7902) AND LOC='NEW YORK';