/*
*Special Operators:-
	1.IN 
    2.NOT IN 
    3.BETWEEN 
    4.NOT BETWEEN
    5.IS
    6.IS NOT
    7.LIKE
    8.NOT LIKE
*/

/*
1.IN Operator:-
* It is multi-valued operator which can accept multiple values at the RHS
* syntax :- COLUMN_NAME/EXPRESSION IN(V1,V2,...)
*/
-- 79)WAQTD name and deptno of the employees working in dept 10 or 30
SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO IN(10,30);

-- 80)WAQTD name and job of the employee working as a clerk or manager or salesman
SELECT ENAME,JOB
FROM EMP
WHERE JOB IN('CLERK' ,'MANAGER','SALESMAN');

-- 81)WAQTD empno,ename and salary of the employees whoes empno is 7902 0r 7839 and getting salary more than 2925
SELECT EMPNO,ENAME,SAL
FROM EMP
WHERE EMPNO IN(7902,7839) AND SAL>2925;

/*
*2. NOT IN Operator:-
* It is multi-values operators which can accept multiple values at the RHS.
* It is similar to IN operator instesd of selecting it rejects the values
* syntax:- COLUMN_NAME/EXPRESSION NOT IN(V1,V2,...)
*/

-- 82)WAQTD name and deptno of all the employees except the emp working in dept 10 or 40
SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO NOT IN(10,40);

-- 82)WAQTD name,deptno,job of the employee working in dept 20 but not as a clerk or manager
SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO IN(20) AND JOB NOT IN('MANAGER','CLERK');

/*
3.BETWEEN Operator:-
* It is used whenever we have range of values(start value and end value).
* Syntax:- COLUMN_NAME BETWEEN LOWER_RANGE AND HIGHER_RANGE;
* BETWEEN operator works including the values.
*/

-- 83)WAQTD name and salary of the employees if the empm is earning salary in the range 1000 to 3000
SELECT ENAME,SAL
FROM EMP
WHERE SAL BETWEEN 1000 AND 3000;

-- 84)WAQTD name and deptno of the employees working in deptno 10 and hired during 2019(the entire year 2019)
SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO=10 AND HIREDATE BETWEEN '2019-01-01' AND '2019-12-31';

-- 85)WAQTD name,sal and hiredate of the employees hired during 2017 into dept 20 with a salary greater than 2000
SELECT ENAME,SAL,HIREDATE
FROM EMP
WHERE DEPTNO IN(20) AND SAL>2000 AND HIREDATE BETWEEN '2017-01-01' AND '2017-12-31';

/*
4. NOT BETWEEN Operator:-
* It is opposite OF BETWEEN operator. 
* syntax:- COLUMN_NAME NOT BETWEEN LOWER_RANGE AND HIGHER_RANGE;
*/

-- 86)WAQTD name and salary of the employees if the emp isnot earning salary in the range 1000 to 3000
SELECT ENAME,SAL
FROM EMP
WHERE SAL NOT BETWEEN 1000 AND 3000;

-- 87)WAQTD name and deptno of the employees working in dept 10 and not hired during 2019
SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO=10 AND HIREDATE NOT BETWEEN '2019-01-01' AND '2019-12-31';

-- 88)WAQTD name, sal and hiredate of the employees who were not hired during 2017 into dept 20 with a salary greater than 2000
SELECT ENAME,SAL,HIREDATE
FROM EMP
WHERE DEPTNO IN(20) AND SAL>2000 AND HIREDATE NOT BETWEEN '2017-01-01' AND '2017-12-31';

/*
5. IS Operator:-
* It is used to compare only NULL.
* syntax:- COLUMN_NAME IS NULL;
*/

-- 89)WAQTD name of the employee who is not gettng any salary
SELECT ENAME
FROM EMP
WHERE SAL IS NULL;

-- 90) WAQTD name of the emloyee who doesnt get any commission
SELECT ENAME
FROM EMP
WHERE COMM IS NULL;

-- 91)WAQTD name,sal and comm of the employee f the employee doesnt earn
SELECT ENAME,SAL,COMM
FROM EMP
WHERE SAL IS NULL;

/*
6. IS NOT Operator:-
* It is used to compare only which are NOT NULL.
* syntax:- COLUMN_NAME IS NOT NULL;
*/

-- 92)WAQTD name of the employee who is getting salary
SELECT ENAME
FROM EMP
WHERE SAL IS NOT NULL;

-- 93)WAQTD name of the employee who gets commission
SELECT ENAME
FROM EMP
WHERE COMM IS NOT NULL;

-- 94)WAQTD name,sal and comm of the emp if the emp doesnt earn commission but gets salary
SELECT ENAME,SAL,COMM
FROM EMP
WHERE COMM IS NULL AND SAL IS NOT NULL;

/*
7. LIKE Operator:-
* It is used FOR pattern matching
* To achive pattern matching we use special characters
   1)percentile(%)--->Indicates any number of charcaters
   2)underscore(_)--->Indicates only one character
* syntax:-COLUMN_NAME LIKE 'PATTERN';
*/

-- 95) WAQTD details of an employee whoes name starts with 'S'.
SELECT *
FROM EMP
WHERE ENAME LIKE 'S%';

-- 96) WAQTD details of an employee whoes name ends with 'S'.
SELECT *
FROM EMP
WHERE ENAME LIKE '%S';

-- 97)WAQTD names of the employees who have character 'S' in their names
SELECT *
FROM EMP
WHERE ENAME LIKE '%S%';

-- 98)WAQTD names that starts with 'J' and ends with 'S'
SELECT ENAME
FROM EMP
WHERE ENAME LIKE 'J%' AND ENAME LIKE '%S';

SELECT ENAME
FROM EMP
WHERE ENAME LIKE 'J%S';

-- 99)WAQTD names of the employee if the emp has a char 'A' as his second character
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '_A%';

-- 100)WAQTD names of the employee if the emp has a char 'A' as his 3 character
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '__A%';

-- 101)WAQTD names of the employee if the emp has a char 'A' as his second character and 'S' is last character.alter
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '_A%S';

-- 102)WAQTD names of the employee if the emp has character 'A' present at least 2 times
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%A%A%';

-- 103)WAQTD names of the employee if the emp name starts with 'A' and ends wth 'A'
SELECT ENAME
FROM EMP
WHERE ENAME LIKE 'A%A';

-- 104)WAQTD names of the employee if the emp salary last 2 digit is 50 rupees
SELECT ENAME
FROM EMP
WHERE SAL LIKE '%50.00';

-- 105)WAQTD names, hiredate of the employees hired in november
SELECT ENAME,HIREDATE
FROM EMP
WHERE HIREDATE LIKE '%11___%';

/*
8. NOT LIKE Operator:-
* It is opposite of like operator. 
*syntax:- COLUMN_NAME NOT LIKE 'PATTERN';
*/

-- 106)list all the employees whose commision is null
SELECT *
FROM EMP
WHERE COMM IS NULL;

-- 107)list all the employees who dont have a reportng manager
SELECT *
FROM EMP
WHERE MGR IS NULL;

-- 108)list all the salesman in dept 30
SELECT *
FROM EMP
WHERE JOB IN ('SALESMAN' ) AND DEPTNO=30;

-- 109)list all the salesman in dept 30 and having salary greater than 1500
SELECT *
FROM EMP
WHERE JOB IN ('SALESMAN' ) AND DEPTNO=30 and sal>1500;

-- 110)list all the employees excepts those who are working in dept 10 and 20
SELECT *
FROM EMP
WHERE DEPTNO NOT IN(10,20);

-- 111) list the employees whose name does not start with 'S'
SELECT *
FROM EMP
WHERE ENAME NOT LIKE 'S%';

-- 112) list all the emlpoyees who are having reporting manager in deptno 10
SELECT *
FROM EMP
WHERE DEPTNO IN(10) AND MGR IS NOT NULL;

-- 113) List all the employees whose commission is null and working as clerk
SELECT *
FROM EMP
WHERE COMM IS NULL AND JOB IN('CLERK');

-- 114) list all the employees who dont have a reporting manages in dept 10 or 30
SELECT *
FROM EMP
WHERE COMM IS NULL AND DEPTNO=10 OR DEPTNO=30;

-- 115)list all the salesman in deptno 30 with sal more than 2450
SELECT *
FROM EMP
WHERE JOB IN('SALESMAN') AND DEPTNO IN(30) AND SAL>2450;

-- 116)list all the employees with annual salary except those who are working in dept 30
SELECT *,SAL*12 AS ANNUAL_SAL
FROM EMP
WHERE DEPTNO NOT IN (30);

-- 117) list all the employees whose name does not end with 'ES' or 'R'
SELECT *
FROM EMP
WHERE ENAME NOT LIKE '%ES' OR ENAME NOT LIKE '%S';

-- 118)display all the employee who are salesman having 'E' as the last but one character in ename but salary having exactly 4 character
SELECT *
FROM EMP
WHERE JOB IN('SALESMAN') AND ENAME LIKE '%E_' AND SAL LIKE '____.00';

-- 119)display all the employee who are joined in feb
SELECT *
FROM EMP
WHERE HIREDATE LIKE '%02___%';

-- 120)list the employees who are not working as manager and clearks in dept 10 and 20 with a salary in the range of 1000 to 3000
SELECT *
FROM EMP
WHERE JOB NOT IN('MANAGER','CLERK') AND DEPTNO IN(10,20) AND SAL BETWEEN 1000 AND 3000;




