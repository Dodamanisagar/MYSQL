-- Salary Ranking within Each Department:-
-- Scenario: You want to rank employees within each department based on their salary.
-- Query:-
select 
	emp.* ,
	rank() over(partition by deptno order by sal desc) ranking
from emp;

-- Commission Ranking within Job Titles:
-- Scenario: You want to rank employees with the same job title based on their commission.
-- SQL Query:
select 
	emp.*,
	rank() over(partition by job order by comm desc) ranking
from emp;

-- Employee Performance Ranking Overall:
-- Scenario: You want to rank all employees based on their overall performance, considering both salary and commission.
-- SQL Query:
SELECT
    EMPNO,
    ENAME,
    SAL,
    COMM,
    COALESCE(SAL, 0) + COALESCE(COMM, 0)as performance,
    RANK() OVER (ORDER BY (COALESCE(SAL, 0) + COALESCE(COMM, 0)) DESC) AS Overall_Performance_Rank
FROM
    emp;
    

-- Hierarchy Level Ranking:
-- Scenario: You want to rank employees based on their hierarchy level within the organization.
-- SQL Query:
SELECT
	EMP.*,
    RANK() OVER(ORDER BY JOB,SAL DESC) AS HIERARCHY
FROM EMP;

-- Longest Serving Employee Ranking:
-- Scenario: You want to rank employees based on their tenure in the company (hire date).
-- SQL Query:
SELECT
	EMP.*,
    RANK() OVER(ORDER BY HIREDATE ) AS LONGESTSERVE
FROM EMP;

    
    


	
