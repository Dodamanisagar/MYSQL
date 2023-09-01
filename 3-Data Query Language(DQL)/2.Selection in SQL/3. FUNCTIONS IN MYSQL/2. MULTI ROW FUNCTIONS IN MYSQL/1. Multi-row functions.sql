/*2. MUTLI ROW FUNCTIONS/AGGREGATE/GROUP FUNCTIONS:-These functions will work on muultiple rows and give single output. 
* Mainly used MRF are:
	1)MAX()-It us used to ibtaine the maximum value presentin the column.
    2)MIN()-It us used to ibtaine the minimum value presentin the column.
    3)SUM()-It is used to obtain the summation of the values present in the column. 
    4)AVG()-It is used to obtain the average of the values present in the column. 
    5)COUNT()-It is used to obtain the number of the values present in the column. 
    
NOTE:-
1. MRF can accept only one argument, i,e a COLUMN_NAME or an EXPRESSION. 
	MRF(COLUMN_NAME/EXPRESSION)
2. Along with a MRF() we are not supposed to use any other COLUMN_NAME in the select clause. 
3. MRF() ignore the null.
4. We cannot use MRF() in where clause.
5. COUNT() is the only one MRF which can accept * as an argument.
6. use ! and ESCAPE command while comparing any symboles like '_','%' etc...
example:-
select count(*)
from emp
where ename like '%!_% ESCAPE '!';
*/

-- WAQTD maximum salary given to a manager
SELECT MAX(SAL)
FROM EMP;

-- WAQTD total salary given to dept 10
SELECT SUM(SAL)
FROM EMP
WHERE DEPTNO=10; 

-- WAQTD number of employees earing more than 1500, in dept 20
SELECT COUNT(*)
FROM EMP
WHERE SAL>1500 AND DEPTNO IN(20);

-- WAQTD number of employee having 'E' in their names
SELECT COUNT(*)
FROM EMP
WHERE ENAME LIKE '%E%';

-- WAQTD minimum salary given to the employees working as clerk in dept 10 or 20
SELECT MIN(SAL)
FROM EMP
WHERE JOB IN('CLERK') AND DEPTNO IN(10,20);

-- WAQTD number of employees hired after 1982 and before 1985 into dept 10 or 30
SELECT COUNT(*)
FROM EMP
WHERE HIREDATE>'1982-12-31' AND HIREDATE<'1985-01-01' AND DEPTNO IN(10,30);

-- WAQTD number of employees getting commission
SELECT COUNT(*)
FROM EMP
WHERE COMM IS NOT NULL;

SELECT COUNT(COMM)
FROM EMP;

-- WAQTD maximum salary given to employees if the employee has character 'S' in the name and works as a manager in dept 10 with a salary of moere than 1800
SELECT MAX(SAL)
FROM EMP
WHERE ENAME LIKE '%S%' AND JOB='MANAGER' AND DEPTNO=10 AND SAL>1800;

-- WAQTD number of employees working in dept 10 or 30 and getting commission without the salary
SELECT COUNT(*)
FROM EMP
WHERE DEPTNO IN(10,30) AND COMM IS NOT NULL AND SAL IS NULL;

SELECT COUNT(COMM)
FROM EMP
WHERE DEPTNO IN(10,30) AND SAL IS NULL;

-- WAQTD maximum salary given to a manager working in dept 20 and also his comm musT be greater than his salary
SELECT MAX(SAL)
FROM EMP
WHERE JOB='MANAGER' AND DEPTNO=20 AND COMM>SAL;

-- WAQTD number of employees getting salary more then 2000 in dept 10
SELECT COUNT(*)
FROM EMP
WHERE SAL>2000 AND DEPTNO=10;

-- WAQTD total salry needed to pay emloyees working as clerk
SELECT SUM(SAL)
FROM  EMP
WHERE JOB='CLERK';
 
-- WAQTD average salary needed to pay all the employees
SELECT AVG(SAL)
FROM EMP;

-- WAQTD number of employees having 'A' as their first character
SELECT COUNT(*)
FROM EMP
WHERE ENAME LIKE 'A%';

-- WAQTD number of emloyees working as clerk or manager
SELECT COUNT(*)
FROM EMP
WHERE JOB IN('CLERK','MANAGER');

-- WAQTD total salary needed to pay employees hired in feb
SELECT SUM(SAL)
FROM EMP
WHERE HIREDATE LIKE '%02%';

-- WAQTD number of emloyees reporting to 7839
SELECT COUNT(*)
FROM EMP
WHERE MGR=7839;

-- WAQTD number of emplyees getting commission in dept 30
SELECT COUNT(*)
FROM EMP
WHERE COMM IS NOT NULL AND DEPTNO=30;

SELECT COUNT(COMM)
FROM EMP
WHERE DEPTNO=30;

-- WAQTD avg sal,total sal,number of emps and maximum salary given to employees working as president
SELECT AVG(SAL),SUM(SAL),COUNT(*), MAX(SAL)
FROM EMP
WHERE JOB='PRESIDENT';

-- WAQTD number of emps and total salary needed to pay the employees who have 2 consicutive 'L' in their names
SELECT COUNT(*),SUM(SAL)
FROM EMP
WHERE ENAME LIKE '%LL%';

-- WAQTD number of department present in employee table
SELECT COUNT(DISTINCT DEPTNO)
FROM EMP;

-- WAQTD number of employees having character '_' in their names
SELECT COUNT(*)
FROM EMP
WHERE ENAME LIKE '%!_%' ESCAPE '!';

-- WAQTD number of employees having atleast 2 percentile in their names
SELECT COUNT(*)
FROM EMP
WHERE ENAME LIKE '%!%%!%%' ESCAPE '!';

-- WAQTD number of distinct salary present in the wmp table
SELECT COUNT(DISTINCT SAL)
FROM EMP;