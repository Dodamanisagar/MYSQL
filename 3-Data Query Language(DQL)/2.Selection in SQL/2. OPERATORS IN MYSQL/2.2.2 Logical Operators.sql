/*
* Logical Operators:-
* We use logical operators to write multiple conditions. 
*/
-- 51) WAQTD name and deptno along with job for the employee working as manager in dept 10
SELECT ENAME,DEPTNO,JOB
FROM EMP
WHERE JOB='MANAGER' AND DEPTNO=10;

-- 52) WAQTD name,sal,deptno of the employee working in dept 20 and earning less than 3000
SELECT ENAME,SAL,DEPTNO
FROM EMP
WHERE DEPTNO =20 AND SAL<3000;

-- 53) WAQTD name and salary of the emloyee if emp earns more than 1250 but less than 3000
SELECT ENAME,SAL
FROM EMP
WHERE SAL>1250 AND SAL<3000;

-- 54)WAQTD name and deptno of the emloyees if works in deptno 10 or 20
SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO=10 OR DEPTNO=20;

-- 55)WAQTD name ,sal,deptno of the employees if emp gets more than 1250 but less than 4000 and works in deptno 20
SELECT ENAME,SAL,DEPTNO
FROM EMP
WHERE SAL>1250 AND SAL<4000 AND DEPTNO=20;

-- 56)WAQTD name,job,deptno of the employees working as a manager in dept 10 or 20
SELECT ENAME,JOB,DEPTNO
FROM EMP
WHERE JOB='MANAGER' AND (DEPTNO=10 OR DEPTNO=20);

-- 57)WAQTD name,deptno,job of the employees working in deptno 10 or 20 or 30 as a clerk
SELECT ENAME,DEPTNO,JOB
FROM EMP
WHERE JOB='CLERK' AND (DEPTNO=10 OR DEPTNO=20 OR DEPTNO=30);

-- 58)WAQTD name,deptno,job of the employees working as clerk or manager in dept 10
SELECT ENAME,DEPTNO,JOB
FROM EMP
WHERE DEPTNO=10 AND (JOB='MANAGER' OR JOB='CLERK');

-- 59)WAQTD name,job,deptno,sal of the employees working as clerk pr salesman in deptno 10 or 30 and earning less than 1800
SELECT ENAME,JOB,DEPTNO,SAL
FROM EMP
WHERE (JOB='SALESMAN' OR JOB='CLERK') AND (DEPTNO=10 OR DEPTNO=30) AND SAL<1800;

-- 60)WAQTD details of the employees working as clerk and earning less than 1500
SELECT *
FROM EMP
WHERE JOB='CLERK' AND SAL<1500;

-- 61)WAQTD name and hiredate of the employees working as manager in dept 30
SELECT ENAME,HIREDATE
FROM EMP
WHERE JOB='MANAGER' AND DEPTNO=30;

-- 62)WAQTD details of the employee along with annual salary if they are working in dept 30 as salesman and their annual salary has to be greater than 14000
SELECT EMP.*,SAL*12 AS ANNUAL_SALARY
FROM EMP
WHERE DEPTNO=30 AND JOB='SALESMAN' AND SAL*12>14000;

-- 62)WAQTD details of the emp working in dept 30 or as analyst
SELECT *
FROM EMP
WHERE DEPTNO=30 OR JOB='ANALYST';

-- 63)WAQTD names of the employees whos salary is less than 1100 and their designation is cleark
SELECT ENAME
FROM EMP
WHERE SAL<1100 AND JOB='CLERK';

-- 64)WAQTD name and salary, annual sal and deptno if deptno is 20 earning more than 1100 and annual salary exceeds 12000
SELECT ENAME,SAL,SAL*12 AS ANNUAL_SALARY,DEPTNO
FROM EMP
WHERE DEPTNO=20 AND SAL>1100 and sal*12>12000;

-- 65)WAQTD empno and names of the employees working as manager in dept 20
SELECT EMPNO,ENAME
FROM EMP
WHERE DEPTNO=20 AND JOB='MANAGER';

-- 66)WAQTD details of the emloyees working in dept 20 or 30
SELECT * 
FROM EMP
WHERE DEPTNO=20 OR DEPTNO=30;

-- 67)WAQTD details of emloyees working as analyst in dept 10
SELECT *
FROM EMP
WHERE JOB='ANALYST' AND DEPTNO=10;

-- 68)WAQTD details of an employees working as president with salry of ruees 4000
SELECT *
FROM EMP
WHERE JOB='PRESIDENT' AND SAL=4000;

-- 69)WAQTD names and deptno,job of emps working as clerk in dept 10 or 20
SELECT ENAME,JOB,DEPTNO
FROM EMP
WHERE JOB='CLERK' AND (DEPTNO=10 OR DEPTNO=20);

-- 70)WAQTD details of employees working as clerk or manager in dept 10
SELECT *
FROM EMP
WHERE DEPTNO=10 AND(JOB='CLERK' OR JOB='MANAGER');

-- 71)WAQTD names of the employees working in deptno 10,20,30,40
SELECT ENAME
FROM EMP
WHERE DEPTNO=10 AND DEPTNO=20 AND DEPTNO=30 AND DEPTNO=40 ;

-- 72)WAQTD details of employees with Empno 7901, 7839
SELECT *
FROM EMP
WHERE EMPNO=7901 AND EMPNO=7839;

-- 73)WAQTD details of employees working as manager or salesman or clerk
SELECT *
FROM EMP
WHERE JOB='MANAGER' OR JOB='SALESMAN' OR JOB='CLERK';

-- 74)WAQTD names of the employees hired after 81 and befor 87
SELECT ENAME
FROM EMP
WHERE HIREDATE>'1980-12-31' AND HIREDATE<'1987-01-01';

-- 75)WAQTD details of the emloyees earning more than 1250 but less than 3000
SELECT *
FROM EMP
WHERE SAL>1250 AND SAL<3000;

-- 76)WAQTD names of the employees hired after 81 into dept 10 or 30
SELECT ENAME
FROM EMP
WHERE HIREDATE>'1981-12-31' AND (DEPTNO=10 OR DEPTNO=30);

-- 77)WAQTD names of the employees along with annual salary for the employees working as manager or clerk into dept 10 or 30
SELECT ENAME,SAL*12 AS ANNUAL_SAL
FROM EMP
WHERE (JOB='MANAGER' OR JOB='CLERK') AND (DEPTNO=10 OR DEPTNO=30);

-- 78)WAQTD all the details along with anual salry if sal is between 1000 and 4000 annual salary more than 1500
SELECT EMP.*,SAL*12 AS ANNUAL_SAL
FROM EMP
WHERE (SAL>1000 AND SAL<4000) AND SAL*12>15000;

