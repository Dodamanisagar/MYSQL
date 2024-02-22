/*SELF JOIN:-
-- Joining a table by itself is known as self join.
-- Whenever the data to select is in the same table but present in different records we use self join. 
-- The self join is often used to query hierarchical data or to compare a row with other rows within the same table.
-- To perform a self join, you must use table aliases to not repeat the same table name twice in a single query.
*/
-- List all employees and their managers.
SELECT E.ENAME AS EMPLOYEE,M.ENAME AS MANAGER
FROM EMP E 
LEFT JOIN EMP M ON E.MGR=M.EMPNO;

-- List employees who don't have managers.
SELECT E.ENAME AS EMPLOYEE
FROM EMP E 
LEFT JOIN EMP M ON E.MGR=M.EMPNO
WHERE E.MGR IS NULL;

-- List employees who were hired on the same date.
SELECT E1.ENAME, E2.ENAME
FROM EMP E1
JOIN EMP E2 ON E1.HIREDATE = E2.HIREDATE AND E1.EMPNO < E2.EMPNO;

-- Find the number of employees in each department.
SELECT D.DNAME, COUNT(E.EMPNO) AS EMPLOYEE_COUNT
FROM DEPT D
LEFT JOIN EMP E ON D.DEPTNO = E.DEPTNO
GROUP BY D.DNAME;

-- Find the number of employees hired in each year.
SELECT YEAR(HIREDATE) AS HIRE_YEAR, COUNT(*) AS EMPLOYEE_COUNT
FROM EMP
GROUP BY HIRE_YEAR;

-- Find the department with the highest total salary budget.
SELECT D.DNAME
FROM DEPT D
JOIN (SELECT DEPTNO,SUM(SAL) AS TOTYAL_SAL
FROM EMP E
GROUP BY 1
ORDER BY 1 DESC
LIMIT 1) AS T USING(DEPTNO);

-- Find the employees with the highest salary in each department.
SELECT D.DNAME,E.ENAME,E.SAL 
FROM DEPT D 
JOIN EMP E USING(DEPTNO)
WHERE (E.DEPTNO,E.SAL) IN
(SELECT DEPTNO,MAX(SAL)
FROM EMP 
GROUP BY 1);

-- Find the employees with the same salary.
SELECT E1.ENAME, E2.ENAME
FROM EMP E1
JOIN EMP E2 ON E1.SAL = E2.SAL AND E1.EMPNO < E2.EMPNO;

--  List employees and their manager's job title.
SELECT E1.ENAME,E2.JOB AS MANAGER_JOB
FROM EMP E1
INNER JOIN EMP E2 ON E1.MGR=E2.EMPNO;

