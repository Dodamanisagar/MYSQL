/*
*case-2:-
--> Whenever the data to be selected and the condition to be executed are Present in different tables we use sub query.alter

*/

-- WAQTD deptno of the employee whose name is MILLER
SELECT DEPTNO
FROM DEPT
WHERE DEPTNO=(SELECT DEPTNO FROM EMP WHERE ENAME='MILLER');

-- WAQTD location of ADAMS
SELECT LOC
FROM DEPT
WHERE DEPTNO=(SELECT DEPTNO FROM EMP WHERE ENAME='ADAMS');

-- WAQTD names of the employees working in location NEW YORK
SELECT ENAME
FROM EMP
WHERE DEPTNO=(SELECT DEPTNO FROM DEPT WHERE LOC='NEW YORK'); 

