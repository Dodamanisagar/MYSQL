/*1. Write a query to rearrange the Products table so each row has (product_id, store, price). 
If a product is unavailable in a store, do not include a row with that product_id and store combination in the result table.

Note: Return the result ordered by product_id and store in ascending order.
*/
-- Create the 'products' table
create database Interview_Questions;
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    store1 INT,
    store2 INT,
    store3 INT
);

-- Insert data into the 'products' table
INSERT INTO products(product_id, store1, store2, store3)
VALUES 
  (0, 90, 105, 110),
  (1, null, 87, 85),
  (2, null, 30, 40);
  
  -- sample input-
  select * from products;
  
  -- Answer
SELECT "product_id", 'store1' AS store, store1 AS price
FROM products
WHERE store1 IS NOT NULL
UNION
SELECT "product_id", 'store2' AS store, store2 AS price
FROM products
WHERE store2 IS NOT NULL
UNION
SELECT "product_id", 'store3' AS store, store3 AS price
FROM products
WHERE store3 IS NOT NULL
ORDER BY "product_id", store;
-- --------------------------------------------------------------------
-- table Employees:-
Create table Employees
(
 ID int auto_increment primary key ,
 FirstName varchar(50),
 LastName varchar(50),
 Gender varchar(50),
 Salary int
);
INSERT INTO Employees( FirstName, LastName, Gender,Salary)
VALUES 
('Ben', 'Hoskins', 'Male', 70000),
('Mark', 'Hastings', 'Male', 60000),
('Steve', 'Pound', 'Male', 45000),
('Ben', 'Hoskins', 'Male', 70000),
('Philip', 'Hastings', 'Male', 45000),
('Mary', 'Lambeth', 'Female', 30000),
('Valarie', 'Vikings', 'Female', 35000),
('John', 'Stanmore', 'Male', 80000);

-- 2. Find 2nd Highest Salary using sub queries:-
select max(salary) -- 2nd Highest salary
from employees
where salary<(select max(salary)-- 1st highest salary
			  from employees);
       
 -- ------------------------------------------------------      
-- 3. Find N'th Highest Salary using sub queries:-
select salary
from  (select distinct salary
		from employees
		order by salary desc
		limit 3) result  -- here 3 is acting as 'N'
order by salary
limit 1;

-- ---------------------------------------------------------
-- 4. Find N'th Highest Salary using CTE :-
with highest_sal as
(
select salary ,dense_rank() over(order by salary desc) ranking
from employees
)
select salary
from highest_sal
where ranking=3;
-- ---------------------------------------------------------------------------
-- 5. Question-- Write a SQL code to get the total number of “New” customers who did a successful transaction in the month of December 2022?
-- Table 1: Transactions
CREATE TABLE Transactions (
    TransactionID INT,
    OrderDate DATE,
    CustomerID VARCHAR(3),
    MerchantID VARCHAR(2),
    TransactionAmount INT,
    TransactionStatus VARCHAR(10),
    foreign key(CustomerID) references Customer(CustomerID),
    foreign key(MerchantID) references Merchants(MerchantID)    
);

-- Table 2: Customer
CREATE TABLE Customer (
    CustomerID VARCHAR(3) primary key,
    CustomerSegment VARCHAR(10),
    CustomerCity VARCHAR(20)
);

-- Table 3: Merchants
CREATE TABLE Merchants (
    MerchantID VARCHAR(2) primary key,
    MerchantName VARCHAR(20)
);

-- Insert data into Transactions
INSERT INTO Transactions VALUES
(1234, '2021-06-02','C1' , 'M1', 450, 'Success'),
(2134, '2021-06-07','C2' , 'M1', 450, 'Success'),
(1234, '2021-06-014','C1' , 'M2', 320, 'Fail');


-- Insert data into Customer
INSERT INTO Customer VALUES
('C1', 'New', 'Delhi'),
('C2', 'New', 'Kolkata'),
('C3', 'Repeat', 'Mumbai');

-- Insert data into Merchants
INSERT INTO Merchants VALUES
('M1', 'Airtel'),
('M2', 'Jio');

-- Answer-
SELECT COUNT(DISTINCT T.CUSTOMER_ID) AS NEW_CUSTOMER
FROM TRANSACTIONS T
LEFT JOIN CUSTOMER USING(CUSTOMER_ID)
WHERE CUSTOMER_SEGMENT='New' AND 
	  TRANSACTION_STATUS='Success' and 
      MONTH(ORDER_DATE)=12 AND 
      YEAR(ORDER_DATE)=2022;
-- -----------------------------------------------------------------------------
/*6. Write a Query to print numbers from 1 to 20*/
set @id=20;
with recursive counting(n)as
(
	select 1
    union all
    select 1+n
    from counting
    where n<@id
)
select n as Number
from counting;
-- --------------------------------------------------------------------------
/*7. Write a Query to print even numbers from 1 to 20*/
SET @id = 20;

WITH RECURSIVE counting(n) AS
(
    SELECT 2   -- Start with the first even number
    UNION ALL
    SELECT n + 2
    FROM counting
    WHERE n < @id - 1  -- Adjusted condition to generate even numbers up to @id
)
SELECT n AS Number
FROM counting;
-- --------------------------------------------------------------------------
/*8. Write a Query to print odd numbers from 1 to 20*/
set @a=20;
with recursive oddNumers(n) as
(
	select 1
     union all
     select n+2
     from oddNumers
     where n<@a-1
)
    select n as odd
    from oddNumers;


--  -------------------------------------------------------------------------
/*
* 9. Here is the problem definition:
1. Employees table Contains EmployeeID, EmployeeName & ManagerID columns
2. If an Employeeld is passed, the query should list down the entire organization
hierarchy i.e who iss the manager of the Employeeld passed and who is managers
manager and so on till full hierarchy is listed.

* To solve this Question the following concepts need to be understood first.
1. Self-Join-
2. CTE 
3. recursive CTE
*/
Create table EmployeesHirarchy
(
 EmployeeID int primary key auto_increment ,
 EmployeeName varchar(50),
 ManagerID int  
);

Insert into EmployeesHirarchy (EmployeeName,ManagerID)
values ('John', NULL),
 ('Mark', NULL),
 ('Steve', NULL),
 ('Tom', NULL),
 ('Lara', NULL),
 ('Simon', NULL),
 ('David', NULL),
 ('Ben', NULL),
 ('Stacy', NULL),
 ('Sam', NULL);
 
Update EmployeesHirarchy Set ManagerID = 8 Where EmployeeName IN ('Mark', 'Steve', 'Lara');
Update EmployeesHirarchy Set ManagerID = 2 Where EmployeeName IN ('Stacy', 'Simon');
Update EmployeesHirarchy Set ManagerID = 3 Where EmployeeName IN ('Tom');
Update EmployeesHirarchy Set ManagerID = 5 Where EmployeeName IN ('John', 'Sam');
Update EmployeesHirarchy Set ManagerID = 4 Where EmployeeName IN ('David');

Select * from employeeshirarchy;

SET @ID = 6;

WITH recursive EmployeeCTE AS
(
    -- anchor member
    SELECT EmployeeID, EmployeeName, ManagerID
    FROM EmployeesHirarchy
    WHERE EmployeeID = @ID
    
    UNION ALL
    
    -- recursive member that references to the CTE name
    SELECT EH.EmployeeID, EH.EmployeeName, EH.ManagerID
    FROM EmployeesHirarchy EH
    JOIN EmployeeCTE CTE ON EH.EmployeeID = CTE.ManagerID
)
SELECT E1.EmployeeName AS EmployeeName, IFNULL(E2.EmployeeName, 'No Boss') AS ManagerName
FROM EmployeeCTE E1
LEFT JOIN EmployeeCTE E2 ON E1.ManagerID = E2.EmployeeID;  
-- --------------------------------------------------------------------------------------
-- 10.deleting all duplicate rows except one from a sql table wich doest contain primary key.
Create table DuplicateEmployees
(
 ID int,
 FirstName varchar(50),
 LastName varchar(50),
 Gender varchar(50),
 Salary int
);


Insert into DuplicateEmployees values (1, 'Mark', 'Hastings', 'Male', 60000);
Insert into DuplicateEmployees values (1, 'Mark', 'Hastings', 'Male', 60000);
Insert into DuplicateEmployees values (1, 'Mark', 'Hastings', 'Male', 60000);
Insert into DuplicateEmployees values (2, 'Mary', 'Lambeth', 'Female', 30000);
Insert into DuplicateEmployees values (2, 'Mary', 'Lambeth', 'Female', 30000);
Insert into DuplicateEmployees values (3, 'Ben', 'Hoskins', 'Male', 70000);
Insert into DuplicateEmployees values (3, 'Ben', 'Hoskins', 'Male', 70000);
Insert into DuplicateEmployees values (3, 'Ben', 'Hoskins', 'Male', 70000);

SELECT * FROM interview_questions.duplicateemployees;

-- Answer:-
create table DistinctEmployee like duplicateemployees;
insert into DistinctEmployee
select distinct * from duplicateemployees;

select * from DistinctEmployee;
 
 -- ---------------------------------------------------------------
 -- 11.deleting all duplicate rows except one from a sql table wich contain primary key.
Create table DupEmployees
(
 ID int  auto_increment primary key ,
 FirstName varchar(50),
 LastName varchar(50),
 Gender varchar(50),
 Salary int
);


Insert into DupEmployees ( FirstName, LastName, Gender,Salary)
values 
( 'Mark', 'Hastings', 'Male', 60000),
( 'Mark', 'Hastings', 'Male', 60000),
( 'Mark', 'Hastings', 'Male', 60000),
( 'Mary', 'Lambeth', 'Female', 30000),
( 'Mary', 'Lambeth', 'Female', 30000),
( 'Ben', 'Hoskins', 'Male', 70000),
( 'Ben', 'Hoskins', 'Male', 70000),
( 'Ben', 'Hoskins', 'Male', 70000);

select * from  DupEmployees;

with CTE AS 
(
	select *, row_number() over(partition by firstName ) as num
	from DupEmployees
)
delete from DupEmployees using DupEmployees
INNER JOIN CTE using(ID)
where CTE.num>1;

-- -------------------------------------------------------------------------------------------------
--  12.SQL query to find employees hired in last n months/day/year

Create table NEmployees
(
     ID int primary key auto_increment,
     FirstName varchar(50),
     LastName varchar(50),
     Gender varchar(50),
     Salary int,
     HireDate Date
);


INSERT INTO NEmployees (FirstName, LastName, Gender, Salary, HireDate) 
VALUES
('Mark', 'Hastings', 'Male', 60000, '2023-10-05'),
('Steve', 'Pound', 'Male', 45000, '2023-04-20'),
('Ben', 'Hoskins', 'Male', 70000, '2023-04-05'),
('Philip', 'Hastings', 'Male', 45000, '2023-03-11'),
('Mary', 'Lambeth', 'Female', 30000, '2023-03-10'),
('Valarie', 'Vikings', 'Female', 35000, '2023-02-09'),
('John', 'Stanmore', 'Male', 80000, '2023-02-22'),
('Able', 'Edward', 'Male', 5000, '2023-01-22'),
('Emma', 'Nan', 'Female', 5000, '2023-01-14'),
('Jd', 'Nosin', 'Male', 6000, '2023-01-10'),
('Todd', 'Heir', 'Male', 7000, '2023-02-14'),
('San', 'Hughes', 'Male', 7000, '2023-03-15'),
('Nico', 'Night', 'Male', 6500, '2023-04-19'),
('Martin', 'Jany', 'Male', 5500, '2023-05-23'),
('Mathew', 'Mann', 'Male', 4500, '2023-06-23'),
('Baker', 'Barn', 'Male', 3500, '2023-07-23'),
('Mosin', 'Barn', 'Male', 8500, '2023-08-21'),
('Rachel', 'Aril', 'Female', 6500, '2023-09-14'),
('Pameela', 'Son', 'Female', 4500, '2023-10-14'),
('Thomas', 'Cook', 'Male', 3500, '2023-11-14'),
('Malik', 'Md', 'Male', 6500, '2023-12-14'),
('Josh', 'Anderson', 'Male', 4900, '2024-01-05'),
('Geek', 'Ging', 'Male', 2600, '2024-01-04'),
('Sony', 'Sony', 'Male', 2900, '2024-04-30'),
('Aziz', 'Sk', 'Male', 3800, '2024-03-01'),
('Amit', 'Naru', 'Male', 3100, '2024-03-31');

select * from nemployees
order by hiredate desc;


SELECT *, TIMESTAMPDIFF(MONTH, HireDate, CURDATE()) AS diff
FROM NEmployees
WHERE HireDate >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH) -- Filter employees hired in the last 3 months
AND HireDate <= CURDATE() -- Ensure HireDate is not greater than the current date
ORDER BY HireDate DESC;

-- -------------------------------------------------------------

-- 13.Write a sql query to transpose rows to columns.
Create Table Countries
(
 Country varchar(50),
 City varchar(50)
);

Insert into Countries
 values ('USA','New York'),
 ('USA','Houston'),
 ('USA','Dallas'),
 ('India','Hyderabad'),
('India','Bangalore'),
 ('India','New Delhi'),
 ('UK','London'),
 ('UK','Birmingham'),
 ('UK','Manchester');
 
 select * from Countries;


SELECT 
    Country,
    MAX(CASE WHEN seq = 1 THEN City END) AS City1,
    MAX(CASE WHEN seq = 2 THEN City END) AS City2,
    MAX(CASE WHEN seq = 3 THEN City END) AS City3
FROM (
    SELECT 
        Country, 
        City,
        ROW_NUMBER() OVER (PARTITION BY Country ORDER BY Country) AS seq
    FROM 
        Countries
) AS Temp
GROUP BY 
    Country;
    
-- ------------------------------------------------------------------------
-- 14.Write a SQL query to retrieve rows that contain only numerical data.

Create Table TestTable
(
 ID int primary key auto_increment ,
 Value varchar(50)
);

Insert into TestTable(value) values ('123'),
 ('ABC'),
 ('DEF'),
 ('901'),
 ('JKL');
 
 select * from TestTable;
 
SELECT *
FROM TestTable
WHERE Value REGEXP '^[0-9]+$';

-- or

SELECT *
FROM TestTable
WHERE CAST(Value AS UNSIGNED)!= 0;

-- -------------------------------------------
-- 15.write a SQL Query to get the name of the Department that has got the maximum number of Employees.
select * from mysql_tutorial.dept;
select * from mysql_tutorial.emp;

select Dname,count(*)
from mysql_tutorial.dept
inner join mysql_tutorial.emp using(deptno)
group by dname
order by count(*) desc;
-- -----------------------------------------
-- 16.Sql query to select all names that start with a given letter without like operator

SELECT *
FROM mysql_tutorial.emp
WHERE SUBSTRING(ename, 1, 1) = 'A';

-- or 

SELECT *
FROM mysql_tutorial.emp
WHERE ASCII(LEFT(ename, 1)) = ASCII('A');
-- ----------------------------------------------------







  
   




    





























