-- ranking functions without partition by and order by
select *,
	rank() over() as rankNo,
	dense_rank() over() as dense_rankNo,
	row_number() over() as row_numberNo,
    percent_rank() over() as pRank
FROM EMP;

-- ranking functions with partition by
select *,
	rank() over(partition by deptno ) as rankNo,
	dense_rank() over(partition by deptno ) as dense_rankNo,
	row_number() over(partition by deptno ) as row_numberNo,
    percent_rank() over(partition by deptno ) as pRank
FROM EMP;

-- ranking functions with partition by and order by
select *,
	rank() over(partition by deptno order by ename) as rankNo,
	dense_rank() over(partition by deptno order by ename) as dense_rankNo,
	row_number() over(partition by deptno order by ename) as row_numberNo,
	percent_rank() over(partition by deptno order by ename ) as pRank
FROM EMP;
