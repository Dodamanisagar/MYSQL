/*TYPE OF SUB-QUERY:-
1) single Row Sub-Query
2) Multi Row Sub-Query

1. SINGLE ROW SUB QUERY:-
➤ If the sub query returns exactly I record / value we call it as Single Row Sub Query.
➤ If it returns only I value then we can use the normal operators Or the Special Operators to compare the values.

2. MULTI ROW SUB QUERY:-
➤ If the sub query returns more than 1 record/ value we call it as Multi Row Sub Query.
➤ If it returns more than 1 value then we cannot use the normal operators We have to use only Special Operators to compare the values.

NOTE:-
 ➤ It is difficult to identify whether a query Belongs Single or Multi row So, it is always recommended to use Special Operators to Compare The values.

*Sub Query Operators:
1. ALL:
➤ "It is special Operator used along with a relational Operator (>,<,>=,=) to compare the values present at the RHS ".
➤ ALL Operator returns true if all the values at the RHS have satisfied the condition.

2. ANY:
➤ "It is special Operator used along with a relational Operator (>,<,>=, <<=) to compare the values present at the RHS".
➤ ANY Operator returns true if one of the values at the RHS have satisfied the condition.

*/



-- WAQTD dname of ALLEN
SELECT DNAME
FROM DEPT
WHERE DEPTNO=(SELECT DEPTNO FROM EMP WHERE ENAME='ALLEN'); -- This sub query returns only one record(SRF)

-- WAQTD dnames of ALLEN and SMITH
SELECT DNAME
FROM DEPT
WHERE DEPTNO=(SELECT DEPTNO FROM EMP WHERE ENAME IN ('ALLEN','SMITH')); -- This will give error since it will returns more than 1 records(MRF)

SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE ENAME IN ('ALLEN','SMITH'));

-- WAQTD name of the employees if the employee earns less than the employees working as salesman
SELECT ENAME
FROM EMP
WHERE SAL < ALL (SELECT SAL FROM EMP WHERE JOB IN('SALESMAN'));

-- WAQTD name of the employee if the employee earns less than at least a salesman
SELECT ENAME
FROM EMP
WHERE SAL < ANY (SELECT SAL FROM EMP WHERE JOB='SALESMAN');

-- WAQTD names of the emloyees earning more than ADAMS
SELECT ENAME
FROM EMP 
WHERE SAL>ALL(SELECT SAL FROM EMP WHERE ENAME='ADAMS');

-- WAQTD name of the employees earning salary more than the salesman
SELECT ENAME,SAL
FROM EMP
WHERE SAL>ALL(SELECT SAL FROM EMP WHERE JOB ='SALESMAN');

-- WAQTD details of the employees hired after all The CLERKS
SELECT *
FROM EMP
WHERE HIREDATE> ALL(SELECT HIREDATE FROM EMP WHERE JOB='CLERK');

-- WAQTD name and salary for all the employees if they are earning less than atleast a MANAGER
SELECT ENAME,SAL
FROM EMP
WHERE SAL<ANY(SELECT SAL FROM EMP WHERE JOB='MANAGER');

-- WAQTD names and hiredate of empoyees hired before all the managers
SELECT ENAME,HIREDATE
FROM EMP
WHERE HIREDATE<ALL(SELECT HIREDATE FROM EMP WHERE JOB='MANAGER');

-- WAQTD names of the employees hired after all the managers and earning salary more than all clerks
SELECT ENAME
FROM EMP
WHERE HIREDATE>ALL(SELECT HIREDATE FROM EMP WHERE JOB='MANAGER') AND SAL>ALL(SELECT SAL FROM EMP WHERE JOB='CLERK');

-- WAQTD details of the employees working as clerk and hired before atleast a salesman
SELECT *
FROM EMP
WHERE JOB='CLERK' AND HIREDATE<ANY(SELECT HIREDATE FROM EMP WHERE JOB='SALESMAN');

-- WAQTD details of the employees working in ACCOUNTING or SALES dept
SELECT *
FROM EMP
WHERE JOB IN('ACCOUNTING','SALES');

-- WAQTD dept names of the emloyees with name SMITH,KING AND MILLER
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE ENAME IN('SMITH','KING','MILLER'));

-- WAQTD emp names if employees are hired after all the employees of dept 10
SELECT ENAME 
FROM EMP
WHERE HIREDATE>ALL(SELECT HIREDATE FROM EMP WHERE DEPTNO=10);