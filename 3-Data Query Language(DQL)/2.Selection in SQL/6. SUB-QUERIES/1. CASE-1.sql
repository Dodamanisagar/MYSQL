/*
*SUB-QUERY:-
* A Query written inside another query is know as sub query

WORKING PRINCIPLE-
* Let us consider two queries Outer Query and Inner Query.
> Inner Query executes first and produces an Output.
> The Output of Inner Query is given / fed as an Input to Outer Query.
> The Outer Query generates the Result.
> Therefore we can state that 'the Outer Query is dependent on Inner Query' and this is the Execution Principle of Sub Query

*Why/ When do we use sub query???
*case-1:-
--> Whenever we have UNKNOWN present in the question we use sub query to find the unknown.

*case-2:-
--> Whenever the data to be selected and the condition to be executed are resent in different tables we use sub query.alter

*NOTE:-
*In the Inner query/ sub query we cannot select more than one column
*The corresponding columns need not be same, but the datatypes of those has to be same.
*/
-- WAQTD names of the emloyees earning less than MILLER
SELECT ENAME
FROM EMP
WHERE SAL<(SELECT SAL FROM EMP WHERE ENAME='MILLER');

-- WAQTD name and deptno of the employees working in the same dept as smith
SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO IN(SELECT DEPTNO FROM EMP WHERE ENAME='SMITH');

-- WAQTD all the details of the employee working in the same designation as KING
SELECT *
FROM EMP
WHERE JOB IN(SELECT JOB FROM EMP WHERE ENAME='KING');

-- WAQTD name,sal,deptno of the employees if the employees earn more than 2000 and work in the same dept as JAMES
SELECT ENAME,SAL,DEPTNO
FROM EMP
WHERE SAL>2000 AND DEPTNO IN(SELECT DEPTNO FROM EMP WHERE ENAME='JAMES');

-- WAQTD all the details of the employees working in the same designation as MILLER and earning more than 1500
SELECT *
FROM EMP
WHERE SAL>1500 AND JOB IN(SELECT JOB FROM EMP WHERE ENAME='MILLER');

-- WAQTD details of the employees earning more than SMITH but less than KING
SELECT *
FROM EMP
WHERE SAL>(SELECT SAL FROM EMP WHERE ENAME='SMITH') AND SAL<(SELECT SAL FROM EMP WHERE ENAME='KING');

-- WAQTD name,sal,deptno of the employees if the employee earning commission in dept 20 and earnong salary more than SCOTT
SELECT ENAME,SAL,DEPTNO
FROM EMP
WHERE DEPTNO=20 AND COMM IS NOT NULL AND SAL>(SELECT SAL FROM EMP WHERE ENAME='SCOTT');

-- WAQTD name and hiredate of the employees whoes name ends with 'S' and hired after JAMES
SELECT ENAME,HIREDATE
FROM EMP
WHERE ENAME LIKE '%S' AND HIREDATE>(SELECT HIREDATE FROM EMP WHERE ENAME ='JAMES');

-- WAQTD names of the employees working in the same dept as JAMES and earning salary more than ADAMS and working in same job role as MILLER and hired after MARTIN
SELECT ENAME
FROM EMP
WHERE  DEPTNO=(SELECT DEPTNO FROM EMP WHERE ENAME='JAMES') AND SAL>(SELECT SAL FROM EMP WHERE ENAME='MARTIN');

-- WAQTD empno and ename along with annual sal of all the Employees if their annual salary is greater than WARDS annual salary
SELECT EMPNO,ENAME,SAL*12 AS ANNUAL_SAL
FROM EMP
WHERE SAL*12>(SELECT SAL*12 FROM EMP WHERE ENAME='WARDS');


