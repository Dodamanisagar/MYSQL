-- Cloning Tables / CREATE TABLE FROM SELECT
-- 1)Cloning Tables
create table ClonedPerson like person;  -- The new table will have exactly the same structure as the original table
desc clonedperson;
desc person;

###
Create table clonedPerson_1 select * from person_1;
desc clonedperson_1;
desc person_1;

-- You can use any of the normal features of a SELECT statement to modify the data as you go:
create table ModifiedPersons
select person_id, First_Name+last_Name as fullName
from person
where last_Name is not null;
desc ModifiedPersons;
desc person;


--- Primary keys and indexes will not be preserved when creating tables from SELECT. You must redeclare them:
create table ModifiedPersons_1 (primary key(person_id))
select person_id,first_name
from person;
desc ModifiedPersons_1;
desc person;

-- 2)CREATE TABLE FROM SELECT
-- create a table from another table in the same database with all attributes
CREATE TABLE stack2 AS SELECT * FROM account;
desc stack2;
desc account;

-- create a table from another table in the same database with some attributes
CREATE TABLE stack3 AS SELECT AccountId, AccountNO FROM stack2;
desc stack2;
desc stack3;

## 3)Create tables from different databases:
create database stacksDataBase;

-- create a table from another table from another database with all attributes
CREATE TABLE stack2 AS SELECT * FROM sagar.stack2;
desc sagar.stack2;
desc stack2;

-- create a table from another table from another database with some attributes
CREATE TABLE stack3 AS SELECT Person_Id, First_Name FROM sagar.person;
desc sagar.person;
desc stack3;



