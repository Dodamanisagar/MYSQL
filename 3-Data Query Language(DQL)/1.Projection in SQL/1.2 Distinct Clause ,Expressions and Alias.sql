/* DISTINCT CLAUSE:-
* It is used to remove the duplicate or repeated values from the result table. 
* Distinct clause has to be used as the first argument to select clause. 
* We can use multiple columns as an argument to distinct clause, it will remove the combination of columns in which the records are duplicated. 

* Expression:-
* A statement which gives result is know as Expression.
* Expression is a combination of operand and operator.
* Operand:-these are the values that we pass. 
* Operator:-these are the symbols which performs some operations on operand. 
example:- 2 + 4 
* Formula to calculate salary Hike= "sal+sal*(n/100)" or "sal*1.n" where 'n' is percentage value.
* Formula to calculate salary deduction= "sal-sal*(n/100)" where 'n' is percentage value.

* Alias:-
* It is an alternate name given to a column or an experession in the result table. 
* We can assign alias name with or without using 'As' keyword. 
* Alias names have to be a single string which is separated by an underscore or enclosed within double quotes. 
Example- 1) full_name or "full name"
*/

-- 14) WAQTD distinct enmployee names
SELECT distinct ENAME
FROM EMP;

-- 15)WAQTD all unique jobs presents in emp table
SELECT DISTINCT JOB
FROM EMP;

-- 16)WAQTD distinct deptno and jobs
SELECT DISTINCT DEPTNO,JOB
FROM EMP;

-- 17)WAQTD name and annual salary of the employee
SELECT ENAME,SAL*12
FROM EMP;

-- 18)WAQTD all the details of the employees along with annual salary
SELECT EMPNO,ENAME,JOB,HIREDATE,MGR,SAL,COMM,DEPTNO,SAL*12
FROM EMP;

SELECT EMP.*,SAL*12
FROM EMP;

-- 19)WAQTD name and salary with a hike of 20%
SELECT ENAME,SAL+SAL*(20/100)
FROM EMP;

SELECT ENAME,SAL*1.20
FROM EMP;

-- 20)WAQTD name and salary of an employee with a deduction of 10%
SELECT ENAME,SAL-SAL*(10/100)
FROM EMP;

-- 21)WAQTD annual salary for all the employees
SELECT SAL*12 ANNUAL_SALARY
FROM EMP;

SELECT SAL*12 AS ANNUAL_SALARY
FROM EMP;

SELECT SAL*12 AS "ANNUAL SALARY"
FROM EMP;

SELECT SAL*12  "ANNUAL SALARY"
FROM EMP;

-- 22)WAQTD name and salary with deduction 32%
SELECT ENAME,SAL-SAL*(32/100) DEDUCTION
FROM EMP;

-- 23)WAQTD name and job for all the employees with their half term salary
SELECT EMP.*,SAL*6
FROM EMP;

-- 24)WAQTD all the details of the employees along with an annual bonus of 2000
SELECT EMP.*, SAL*12+2000 ANNUAL_BONUS
FROM EMP;

-- 25) WAQTD name and salary with monthly hike of 50
SELECT ENAME,SAL,SAL+SAL*1.5 MONTHLY_HIKE
FROM EMP;

-- 26)WAQTD total salary given to each employee (sal+comm)
SELECT SAL,SAL+COMM TOTAL_SAL
FROM EMP;

-- 27) WAQTD name and designation along with 100 penalty in salary
SELECT ENAME,JOB,SAL-100 SAL_AFTER_PENALTY
FROM EMP;