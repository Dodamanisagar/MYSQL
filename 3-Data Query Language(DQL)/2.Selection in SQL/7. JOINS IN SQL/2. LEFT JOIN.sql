/*LEFT Join:-
-- Used to obtain all the records of left table and only matching records of right table
SELECT 
    select_list
FROM
    t1
LEFT JOIN t2 ON 
    join_condition;
-- In the above syntax, t1 is the left table and t2 is the right table.
-- The join_condition specifies the rule for matching rows from both tables.*/
 
 -- WAQTD names and dnames of all the employees even though the employees dont work in any dept
 SELECT ENAME,DNAME
 FROM EMP
 LEFT JOIN DEPT USING(DEPTNO);
 
 -- Retrieve a list of all employees and their department names (including employees with no department).
 SELECT EMP.*,DNAME
 FROM EMP
 INNER JOIN DEPT USING(DEPTNO);
 
 -- List the names of all departments and the count of employees in each department, including departments with no employees.
 SELECT DNAME,COUNT(*) AS EMPLOYEE_COUNT
 FROM DEPT
 INNER JOIN EMP USING(DEPTNO)
 GROUP BY 1;
 
 -- Show a list of employees who do not have a manager.
SELECT EMP.ENAME
FROM EMP
LEFT JOIN EMP AS MANAGER
ON EMP.MGR=MANAGER.EMPNO
WHERE MANAGER.EMPNO IS NULL;
 
 -- Get a list of all departments and the total salary expense in each department, including departments with no employees.
SELECT DNAME,SUM(SAL) AS TOTAL_SAL
FROM DEPT
LEFT JOIN EMP USING(DEPTNO)
GROUP BY 1;

-- Display the employees who have not received any commission.
SELECT DISTINCT EMP.ENAME
FROM EMP
LEFT JOIN EMP AS COMMISSION USING(DEPTNO)
WHERE EMP.COMM IS NULL OR EMP.COMM=0;

-- List the names of employees and their managers (if they have one).
SELECT DISTINCT EMP.ENAME,EMP.MGR
FROM EMP
LEFT JOIN EMP AS MANAGER USING(DEPTNO)
WHERE EMP.MGR IS NOT NULL;

-- Find the departments with no employees.
SELECT DNAME
FROM DEPT
LEFT JOIN EMP USING(DEPTNO)
WHERE EMP.EMPNO IS NULL;

-- Retrieve the names of all employees and their department names, but also include employees with no department. Sort the result by department name.
SELECT ENAME,DNAME
FROM EMP
LEFT JOIN DEPT USING(DEPTNO)
ORDER BY 2;

-- Get a list of employees in each department along with their department name, and display "No Department" for employees with no department.
SELECT ENAME,IFNULL(DNAME,"No Department") as DNAME
FROM EMP
LEFT JOIN DEPT USING(DEPTNO);

-- Get a list of department along with the employees name, and display "No employees" for department with no employees.
SELECT DNAME,IFNULL(ENAME,"No Employees") as DNAME
FROM DEPT
LEFT JOIN EMP USING(DEPTNO);

-- Retrieve a list of departments, their locations, and the highest salary in each department. Include departments with no employees.
SELECT DNAME,LOC,MAX(SAL)
FROM DEPT
LEFT JOIN EMP USING(DEPTNO)
GROUP BY 1,2;




 
 
 
