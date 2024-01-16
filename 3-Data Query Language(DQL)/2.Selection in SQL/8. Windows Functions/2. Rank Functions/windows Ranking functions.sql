-- ranking functions winthout partition by and order by
select *,
	rank() over() as rankNo,
	dense_rank() over() as dense_rankNo,
	row_number() over() as row_numberNo,
    percent_rank() over() as pRank
FROM EMP;

-- ranking functions winth partition by
select *,
	rank() over(partition by deptno ) as rankNo,
	dense_rank() over(partition by deptno ) as dense_rankNo,
	row_number() over(partition by deptno ) as row_numberNo,
    percent_rank() over(partition by deptno ) as pRank
FROM EMP;

-- ranking functions wint partition by and order by
select *,
	rank() over(partition by deptno order by ename) as rankNo,
	dense_rank() over(partition by deptno order by ename) as dense_rankNo,
	row_number() over(partition by deptno order by ename) as row_numberNo,
	percent_rank() over(partition by deptno order by ename ) as pRank
FROM EMP;




