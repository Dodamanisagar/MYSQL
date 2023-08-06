--  ----ALTER TABLE :----
-- --->It is used to modify the structure of the table.
-- 1) Changing storage engine
Alter table person engine=InnoDB;

-- 2)  ALTER COLUMN OF TABLE:-
CREATE DATABASE stackoverflow;

USE stackoverflow;

Create table stack(
 id_user int NOT NULL,
 username varchar(30) NOT NULL,
 password varchar(30) NOT NULL
);

-- 2.1) ADD COLUMN
ALTER TABLE stack ADD COLUMN submit date NOT NULL;  -- add new column 
ALTER TABLE stack ADD COLUMN mod_id INT NOT NULL AFTER id_user; -- add new column after existing column

-- 2.2) DROP COLUMN
ALTER TABLE stack DROP COLUMN submit; -- drop column FROM CURRENT DB
ALTER TABLE SAGAR.person_5 DROP COLUMN PHONE; -- drop column FROM OTHER DB


-- 2.3) MODIFY COLUM DATATYPE AND CONSTRAINTS
ALTER TABLE stack MODIFY submit DATETIME NOT NULL; -- modify datatype of the column
ALTER TABLE stack MODIFY submit DATETIME NULL; -- modify not null to null of the column

-- 2.4) CHANGE DATATYPE AND NAME OF THE COLUMN(COLUMN DEFINATION)
ALTER TABLE stack CHANGE submit submit_date DATE NOT NULL; -- change datatype and name of column
-- 2.4.1) CHANGING THE DATATYPE OF A PRIMARY KEY COLUMN 
ALTER TABLE SAGAR.person_6 DROP PRIMARY KEY;
ALTER TABLE SAGAR.person_6 MODIFY COLUMN ID DECIMAL(20,0) NOT NULL PRIMARY KEY;
-- An attempt to modify the type of this column without first dropping the primary key would result in an error.

-- 2.5) RENAME COLUMN
ALTER TABLE STACK RENAME COLUMN SUBMIT_DATE TO SUBMIT; -- renaming column
ALTER TABLE STACK RENAME TO stack_1; -- renaming table


-- 2.6) CHANGE AUTO-INCREMENT VALUE
ALTER TABLE STACK_1 AUTO_INCREMENT = 101;

-- 2.7) ALTER TABLE ADD INDEX
-- To improve performance one might want to add indexes to columns
ALTER TABLE stack_1 ADD INDEX `stack_2_mod_id` (`mod_id`); -- for single column
ALTER TABLE stack_1 ADD INDEX `stack_2_index` (`username`,`password`); -- for multiple column






