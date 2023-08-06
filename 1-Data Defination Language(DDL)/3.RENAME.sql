-- RENAME --
-- Used to change the name of the objects
-- syntax :-  
RENAME TABLE `stack_2` TO `stack2`;
RENAME TABLE stack_3 TO stack3;

-- The following syntax does exactly the same:
 ALTER TABLE `stack3` RENAME TO `stack_3`;
 ALTER TABLE stack2 RENAME TO stack_2;

-- Rename (move) each table from one db to the other. Do this for each table:
RENAME TABLE sagar.stack3 TO stackoverflow.stack_3;  -- it will move table from one database to another and change the name

