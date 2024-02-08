-- To query the index information of a table, you use the SHOW INDEXES statement as follows:
SHOW INDEXES FROM department;

-- You can specify the database name if you are not connected to any database or you want to get the index information of a table in a different database:
show index from department
in mysql_tutorial;

-- or

show index from mysql_tutorial.department;

-- Note that INDEX and KEYS are the synonyms of the INDEXES, IN is the synonym of the FROM, therefore, you can use these synonyms in the SHOW INDEXES column instead. For example:
show index in department
from mysql_tutorial;

-- or

show keys from department
from mysql_tutorial;

/*
*collation:-
-- Collation represents how the column is sorted in the index. A means ascending, B means descending, or NULL means not sorted.

*cardinality:-
-- The cardinality returns an estimated number of unique values in the index.
-- Note that the higher the cardinality, the greater the chance that the query optimizer uses the index for lookups.
*/