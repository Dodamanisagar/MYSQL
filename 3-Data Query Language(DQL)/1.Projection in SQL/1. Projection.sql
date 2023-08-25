/* PROJECTION:-
* It is a process of retrieving the data by selecting only the columns.
* In projection all the records/values present in a particular column are by default selected. 
* Order of excecution: 1) FROM clause 2)SELECT clause. 
 */


-- 1)WAQTD NAME,SALARY AND COMMISSION GIVEN TO ALL THE EMPLOYEES.
SELECT ENAME,SAL,COMM
FROM EMP;

-- 2)WAQTD name of the employee along with their data of joining.alter
SELECT ENAME,HIREDATE
FROM EMP;

-- 3)WAQTD dname and ocation for all the depts.
SELECT DNAME,loc
FROM DEPT;

-- 4)WAQTD all the details from the employee table
SELECT *
FROM EMP;

-- 5)WAQTD names of all the employees
SELECT ENAME
FROM EMP;

-- 6)WAQTD name and salary given to the employees
SELECT ENAME,SAL
FROM EMP;

-- 7)WAQTD name and commission given to all the employees 
SELECT ENAME,COMM
FROM EMP;

-- 8)WAQTD employee id and department number of all the employees in the emp table
SELECT EMPNO,DEPTNO
FROM EMP;

-- 9)WAQTD ename and hiredate of all the employees.
SELECT ENAME,HIREDATE
FROM EMP;

-- 10)WAQTD name and designation of all the emloyees
SELECT ENAME,JOB
FROM EMP;

-- 11)WAQTD name,job and salary given to all employees
SELECT ENAME,JOB,SAL
FROM EMP;

-- 12)WAQTD dnames present in department table
SELECT DNAME
FROM DEPT;

-- 13)WAQTD dname and location present in dept table
SELECT DNAME,LOC
FROM DEPT;