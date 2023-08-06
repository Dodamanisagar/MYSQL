-- Table creation with Primary Key

create table person(
Person_Id int unsigned not null,
last_Name varchar(80) not null,
First_Name varchar(80),
Address varchar(300),
City varchar(60),
primary key(Person_Id)
);

-- Defining one column as Primary Key (inline definition)

create table person_1(
Person_Id int not null primary key,
Last_name varchar(30) not null,
First_Name varchar(30),
Address varchar(200),
City varchar(150)
);

-- Defining a multiple-column Primary Key
create table person_2(
Person_Id int unsigned not null,
Phone_num int unsigned not null,
Last_name varchar(30) not null,
First_Name varchar(30),
Address varchar(200),
City varchar(150),
primary key(Person_Id,Phone_num)
);

show create table person;   -- shows schema information of the table
desc person;   -- shows all the constraints and data types of the columns in table format

-- ` ` (present below escap button)helps to resolve abviglity when feild name and data type/constraint names are same
CREATE TABLE Person_3 (
 `PersonID` INTEGER NOT NULL PRIMARY KEY,
 `LastName` VARCHAR(80),
 `FirstName` VARCHAR(80),
 `Address` TEXT,
 `City` VARCHAR(100)
) Engine=InnoDB;   -- is an optional parameter used to specify the table's storage engine

#Default values
create table Person_4(
Person_Id int unsigned not null,
last_Name varchar(80) not null,
First_Name varchar(80),
Address varchar(300) default "India",
City varchar(60),
Active int default 1,
primary key(Person_Id)
);

# Table creation with Foreign Key
Create table person_6(
Id int unsigned not null primary key,
Full_Name varchar(200) not null,
Phone int check(Phone=10),
PersonID int ,
FOREIGN KEY (PersonID) REFERENCES Person_1 (Person_Id)
);
desc person_5;

CREATE TABLE Account (
 AccountID INT UNSIGNED NOT NULL,
 AccountNo INT UNSIGNED NOT NULL,
 PersonID INT UNSIGNED,
 PRIMARY KEY (AccountID),
 FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
) ENGINE=InnoDB;
desc Account;

