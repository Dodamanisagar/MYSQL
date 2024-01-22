-- Beginner Level:
-- 1. Create a basic stored procedure named GetAllDepartments that retrieves all records from the DEPT table
DELIMITER //
CREATE PROCEDURE GetAllDepartments()
BEGIN
    SELECT * FROM DEPT;
END //
DELIMITER ;

-- Calling stored procedure
call GetAllDepartments();

-- 2. Write a stored procedure named GetEmployeeById that takes an employee number as a parameter and returns the corresponding employee details.
delimiter //
create procedure GetEmployeeById(in empnum int)
begin
	select * from emp where empno=empnum;
end //
delimiter ;

-- Calling stored procedure
call GetEmployeeById(7369);





-- Intermediate Level:
-- 1. Develop a stored procedure named GetHighSalaryEmployees that retrieves employees with a salary greater than a specified amount.
DELIMITER //
CREATE PROCEDURE GetHighSalaryEmployees(IN min_salary DECIMAL(10, 2))
BEGIN
    SELECT * FROM EMP WHERE SAL > min_salary;
END //
DELIMITER ;

call GetHighSalaryEmployees(3000.00);

-- 2. Create a stored procedure named UpdateEmployeeSalary that updates the salary of an employee based on the employee number.
DELIMITER //
CREATE PROCEDURE UpdateEmployeeSalary(IN emp_id INT, IN new_salary DECIMAL(10, 2))
BEGIN
    UPDATE EMP SET SAL = new_salary WHERE EMPNO = emp_id;
END //
DELIMITER ;

call  UpdateEmployeeSalary(7369,900.00);


-- Advanced Level:-
-- 1. Design a stored procedure named GetDepartmentStatistics that returns the total number of employees, average salary, and highest salary for a specified department.
DELIMITER //
CREATE PROCEDURE GetDepartmentStatistics(IN dept_id INT)
BEGIN
    SELECT
        COUNT(*) AS total_employees,
        AVG(SAL) AS average_salary,
        MAX(SAL) AS highest_salary
    FROM EMP
    WHERE DEPTNO = dept_id;
END //
DELIMITER ;

call GetDepartmentStatistics(20);

-- 2. Implement a stored procedure named DeleteOldEmployees that deletes employees hired after a specified date.
DELIMITER //
CREATE PROCEDURE DeleteOldEmployees(IN cutoff_date DATE)
BEGIN
    DELETE FROM EMP WHERE HIREDATE > cutoff_date;
END //
DELIMITER ;


call DeleteOldEmployees('2000-12-17');




