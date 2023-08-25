/* SELECTION:-
* It is a process of retrieving the data by selecting both the columns and rows.
* Order of excecution:-
1)FROM
2)WHERE
3)SELECT

*WHERE Clause:-
*It is used to filter the records. 
*/

-- 28)WAQTD names of the employees working in dept 20
SELECT ENAME
FROM EMP
WHERE DEPTNO=20;

-- 29)WAQTD names of the emloyees getting salary more than 300
SELECT ENAME
FROM EMP
WHERE SAL>300;

-- 30)WAQTD names and salary of the employees working in dept 10
SELECT ENAME,SAL
FROM EMP
WHERE DEPTNO=10;

-- 31)WAQTD all the details of the employees whose salary is less than 1000 rupees. 
SELECT *
FROM EMP
WHERE SAL<1000;

-- 32)WAQTD name and hiredate of an employee hired on '09-jun-1981'
SELECT ENAME,HIREDATE
FROM EMP
WHERE HIREDATE='1981-06-09';

-- 33)WAQTD details of the employee whose name is miller
SELECT *
FROM EMP
WHERE ENAME='MILLER';

-- 34)WAQTD details of the emloyee hired after'01-jan-1982'
SELECT *
FROM EMP
WHERE HIREDATE>'1982-01-01';

-- 35)WAQTD name,sal and hiredate of the employees who were hired befor 1985
SELECT ENAME,SAL,HIREDATE
FROM EMP
WHERE HIREDATE<'1985-01-01';

-- 36)WAQTD name sal and hiredate of the employee who were hired after 1985
SELECT ENAME,SAL,HIREDATE
FROM EMP
WHERE HIREDATE>'1985-01-01';

-- 37)WAQTD name of the employees who was hired on valentines day 2020
SELECT ENAME
FROM EMP
WHERE HIREDATE='2020-02-14';

-- 38)WAQTD the annual salary of the employee whos name is smith
SELECT SAL*12 ANNUAL_SAL
FROM EMP
WHERE ENAME='SMITH';

-- 39)WAQTD name of the employees working as clerk
SELECT ENAME
FROM EMP
WHERE JOB='CLERK';

-- 40)WAQTD salary of the employees who are working as salesman
SELECT SAL
FROM EMP
WHERE JOB='SALESMAN';

-- 41)WAQTD details of the emp who earns more than 2000
SELECT *
FROM EMP
WHERE SAL>2000;

-- 42)WAQTD details of the emp whos name is jones
SELECT * 
FROM EMP
WHERE ENAME='JONES';

-- 43)WAQTD details of the emp who was hired after 01-jan-81
SELECT *
FROM EMP
WHERE HIREDATE>'1981-01-01';

-- 44)WAQTD name and sal along with his annual salary if the annual salary is more than 12000
SELECT ENAME,SAL,SAL*12 ANNUAL_SAL
FROM EMP
WHERE SAL*12>12000;

-- 45)WAQTD empno of the emloyees who are working in dept 30
SELECT EMPNO
FROM EMP
WHERE DEPTNO=30;

-- 46)WAQTD details of the employees working as manager
SELECT *
FROM EMP
WHERE JOB='MANAGER';

-- 47)WAQTD name and salary given to an employee if employee earns a commission of rupees 1400
SELECT ENAME,SAL
FROM EMP
WHERE COMM=1400;

-- 48)WAQTD details of employees having commission more than sal
SELECT *
FROM EMP
WHERE COMM>SAL;

-- 49)WAQTD details of emloyees working as an analyst
SELECT *
FROM EMP
WHERE JOB='ANALYST';

-- 50)WAQTD details of emp earning more than 2000 rupees per month
SELECT *
FROM EMP
WHERE SAL>2000;
