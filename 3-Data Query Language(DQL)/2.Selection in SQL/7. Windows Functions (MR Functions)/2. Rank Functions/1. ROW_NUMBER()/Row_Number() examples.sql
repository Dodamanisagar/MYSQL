-- 1. ROW_NUMBER():-
/*use:-
1. Assigning sequential numbers to rows
2. Finding the top N rows of every group
3. Removing duplicate rows
4. Pagination using the ROW_NUMBER() function
*/

-- Assigning sequential numbers to rows
SELECT row_number() OVER(ORDER BY HIREDATE),
EMP.*
FROM EMP;

-- Finding the top N rows of every group
with top_n as
(
	select emp.*,row_number() over(partition by deptno order by hiredate desc) rownumber
    from emp
) 
select *
from top_n
where rownumber=4;

-- Removing duplicate rows
with duplicates as
(
	select emp.*,row_number() over(partition by EMPNO order by hiredate ) rownum
	from emp
)
/* DELETE FROM 
  emp USING emp
  INNER JOIN duplicates ON emp.empno = duplicates.empno 
WHERE 
  duplicates.rownum > 1; */
  
  -- NOTE:-Notice that MySQL does not support CTE-based delete. Therefore, you have to join the original table with the CTE as a workaround.
 
 -- Pagination using the ROW_NUMBER() function
  SELECT * 
FROM 
  (
    SELECT emp.*, 
		   row_number() OVER (order by hiredate) AS row_num 
    FROM 
      emp
  ) t 
WHERE 
  row_num BETWEEN 1 AND 10;
  

SELECT
	EMP.*,
    ROW_NUMBER() OVER(PARTITION BY DEPTNO ORDER BY SAL ) AS LONGESTSERVE
FROM EMP;