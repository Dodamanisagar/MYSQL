/*Right Join:-
-- Used to obtain all the records of Right table and only matching records of Left table
SELECT 
    select_list
FROM t1
RIGHT JOIN t2 ON 
    join_condition;
-- The t1 is the left table and t2 is the right table.
-- The join_condition specifies the rule for matching rows from both tables.
*/

-- Get a list of all employees and their departments, including those without a department, using a RIGHT JOIN.
SELECT EMP.*,DEPT.*
FROM EMP
RIGHT JOIN DEPT USING(DEPTNO);

-- List all employees who are in departments located in 'CHICAGO' using a RIGHT JOIN.
SELECT EMP.*
FROM EMP
RIGHT JOIN DEPT USING(DEPTNO)
WHERE DEPT.LOC='CHICAGO';

-- List all employees with their names in uppercase using the UPPER() function in a RIGHT JOIN query.
SELECT UPPER(ENAME)
FROM EMP RIGHT JOIN DEPT USING(DEPTNO);

-- Get the total salary of employees in the 'RESEARCH' department using a RIGHT JOIN.
SELECT SUM(SAL)
FROM EMP RIGHT JOIN DEPT USING(DEPTNO)
WHERE DEPT.DNAME='RESEARCH';

-- List the employees who were hired after '1981-01-01' using a RIGHT JOIN.
SELECT EMP.*
FROM EMP RIGHT JOIN DEPT USING(DEPTNO)
WHERE EMP.HIREDATE>'1981-01-01';

-- Calculate the average salary of all employees using a RIGHT JOIN.
SELECT AVG(SAL)
FROM EMP RIGHT JOIN DEPT USING(DEPTNO);

-- Get the name and job of employees who are managed by '7839' using a RIGHT JOIN.
SELECT ENAME,JOB,MGR
FROM EMP
RIGHT JOIN DEPT USING(DEPTNO)
WHERE MGR=7839;

-- List all employees and their departments, showing 'N/A' for employees with no department, using a RIGHT JOIN.
SELECT EMP.*,IFNULL(DNAME,'N/A') AS DEPARTMENT 
FROM EMP
RIGHT JOIN DEPT USING(DEPTNO);

-- Calculate the total commission paid to each employees using a RIGHT JOIN, showing 0 for employees without commission.
SELECT IFNULL(SUM(COMM),0) AS TOTA_COMMISSION
FROM EMP RIGHT JOIN DEPT USING(DEPTNO)
GROUP BY ENAME;

-- List the names of departments and the number of employees in each department using a RIGHT JOIN.
SELECT DNAME,COUNT(EMPNO) AS EMPLOYEE_COUNT
FROM EMP RIGHT JOIN DEPT USING(DEPTNO)
GROUP BY 1;

-- Get the names and hire dates of employees, formatting the date in 'YYYY/MM/DD' using DATE_FORMAT() in a RIGHT JOIN.
SELECT ENAME,DATE_FORMAT(HIREDATE,'%Y/%M/%D') AS fORMATED_DATE
FROM EMP RIGHT JOIN DEPT USING(DEPTNO);

-- Calculate the total salary and commission of employees, showing 'N/A' for employees without a commission using a RIGHT JOIN.
SELECT EMP.ENAME, IFNULL(SUM(EMP.SAL + IFNULL(EMP.COMM, 0)), 'N/A') AS Total_Earnings
FROM EMP
RIGHT JOIN DEPT USING(DEPTNO)
GROUP BY EMP.ENAME;

-- List employees with names containing 'A' in the 'SALES' department using a RIGHT JOIN.
SELECT ENAME,DNAME
FROM EMP RIGHT JOIN DEPT USING(DEPTNO)
WHERE DNAME='SALES' AND ENAME LIKE '%A%';

-- Get the difference in years between the current date and the hire date of employees using DATEDIFF() in a RIGHT JOIN.
SELECT ENAME,(DATEDIFF(NOW(),HIREDATE))/365 AS YEAR_EMPLOYEED
FROM EMP RIGHT JOIN DEPT USING(DEPTNO);

-- Calculate the total salary of employees in the 'SALES' department, rounded to the nearest hundred using the ROUND() function in a RIGHT JOIN.
SELECT DNAME,ROUND(SUM(SAL),-2) AS rOUNDED_TOTAL
FROM EMP RIGHT JOIN DEPT USING(DEPTNO)
WHERE DNAME='SALES';

-- List the employees who have the same manager, showing the manager's name as well using a RIGHT JOIN.
SELECT EMP.ENAME, EMP.MGR, MANAGER.ENAME AS Manager_Name
FROM EMP
RIGHT JOIN DEPT USING(DEPTNO) -- Try without this
LEFT JOIN EMP AS MANAGER ON EMP.MGR = MANAGER.EMPNO;

-- Get the names of employees with a salary higher than the average salary using a RIGHT JOIN.
SELECT EMP.ENAME
FROM EMP
RIGHT JOIN DEPT USING(DEPTNO) 
WHERE EMP.SAL > (SELECT AVG(SAL) FROM EMP);

-- Calculate the total salary of employees in the 'RESEARCH' department and their commissions using a RIGHT JOIN.
SELECT DEPT.DNAME, SUM(EMP.SAL + IFNULL(EMP.COMM, 0)) AS Total_Earnings
FROM DEPT
RIGHT JOIN EMP USING(DEPTNO)
WHERE DEPT.DNAME = 'RESEARCH';

-- Get the names of employees and their job titles, showing 'UNKNOWN' for employees with no job title, and 'NO MANAGER' for those with no manager using a RIGHT JOIN.
SELECT EMP.ENAME, IFNULL(EMP.JOB, 'UNKNOWN') AS Job_Title, IFNULL(MANAGER.ENAME, 'NO MANAGER') AS Manager_Name
FROM EMP
RIGHT JOIN DEPT USING(DEPTNO)
LEFT JOIN EMP AS MANAGER ON EMP.MGR = MANAGER.EMPNO;     

-- List employees who have a salary at least 10 higher than their manager using a RIGHT JOIN.
SELECT EMP.ENAME, EMP.SAL, MANAGER.ENAME AS Manager_Name, MANAGER.SAL AS Manager_Salary
FROM EMP
RIGHT JOIN EMP AS MANAGER ON EMP.MGR = MANAGER.EMPNO
WHERE EMP.SAL >= (MANAGER.SAL + 10);

-- List employees who were hired in the same year as 'KING' using a RIGHT JOIN.
SELECT EMP.ENAME, EMP.HIREDATE
FROM EMP
RIGHT JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
LEFT JOIN EMP AS KING ON KING.ENAME = 'KING'
WHERE YEAR(EMP.HIREDATE) = YEAR(KING.HIREDATE);

-- List employees who have a salary greater than their manager's salary, showing the manager's name and salary using a RIGHT JOIN.
SELECT EMP.ENAME, EMP.SAL, MANAGER.ENAME AS Manager_Name, MANAGER.SAL AS Manager_Salary
FROM EMP
RIGHT JOIN DEPT USING(DEPTNO)
LEFT JOIN EMP AS MANAGER ON EMP.MGR = MANAGER.EMPNO
WHERE EMP.SAL > MANAGER.SAL;

-- Calculate the total salary of employees in the 'SALES' department, excluding those with a commission of 0 using a RIGHT JOIN.
SELECT DEPT.DNAME, SUM(EMP.SAL) AS Total_Salary
FROM DEPT
RIGHT JOIN EMP ON DEPT.DEPTNO = EMP.DEPTNO
WHERE DEPT.DNAME = 'SALES' AND EMP.COMM != 0;

-- List employees with names containing 'S' or 'T' in the 'RESEARCH' department or without a department using a RIGHT JOIN.
SELECT EMP.ENAME, IFNULL(DEPT.DNAME, 'N/A') AS Department
FROM EMP
RIGHT JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
WHERE (DEPT.DNAME = 'RESEARCH' OR DEPT.DNAME IS NULL) AND (EMP.ENAME LIKE '%S%' OR EMP.ENAME LIKE '%T%');



              










