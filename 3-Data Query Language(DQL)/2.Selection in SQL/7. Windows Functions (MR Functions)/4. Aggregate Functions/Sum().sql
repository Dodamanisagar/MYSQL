-- Find the total salary for each department.
SELECT
	DEPTNO,
    DNAME,
    SUM(SAL) OVER(PARTITION BY DEPTNO) AS TOTAL_SALARY
FROM EMP
JOIN DEPT USING(DEPTNO);

-- Calculate the running total of salaries for each employee, ordered by hire date.(CUMULATIVE SAL))
SELECT
    EMPNO,
    ENAME,
    HIREDATE,
    SAL,
    SUM(SAL) OVER (ORDER BY HIREDATE) AS RUNNING_TOTAL_SALARY
FROM
    EMP;
    
-- Determine the total commission earned by each department, considering NULL commissions as 0.
SELECT
    DEPTNO,
    DNAME,
    SUM(COALESCE(COMM, 0)) OVER (PARTITION BY DEPTNO) AS TOTAL_COMMISSION
FROM
    EMP
RIGHT JOIN DEPT USING(DEPTNO); 

-- Calculate the cumulative sales revenue for each salesman, ordered by hiredate.
SELECT
    ENAME,
    JOB,
    SALE_DATE,
    REVENUE,
    SUM(REVENUE) OVER (PARTITION BY ENAME ORDER BY SALE_DATE) AS CUMULATIVE_REVENUE
FROM
    (SELECT
        ENAME,
        JOB,
        HIREDATE AS SALE_DATE,
        COALESCE(COMM, 0) AS REVENUE
    FROM
        EMP
    WHERE
        JOB = 'SALESMAN') AS SALES_DATA;




