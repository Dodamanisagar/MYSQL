/*Windows Functions :-
-- Window functions give you access to features like advanced analytics and data manipulation without the need to write complex queries.

*Different Types of Window Functions:-
1) Aggregate window functions- Avg(),max(),min(),sum(),count()
2) Value window functions-lag(),lead(),first_value(),last_value(),nth_value()
3) Ranking window functions-row_number(),rank(),dense_rank(),percent_rank(),ntile()

*Syntax for Window Functions:-
SELECT coulmn_name1, 
 window_function(cloumn_name2)
 OVER([PARTITION BY column_name1] [ORDER BY column_name3]) AS new_column
FROM table_name;
 
 *Where:-
window_function= any aggregate or ranking function or Value window functions
OVER()= The OVER() clause has some parameters which are optional depending on what you want to achieve.
PARTITION BY= The PARTITION BY divides the result set into different partitions/windows. 
ORDER BY = ORDER BY is used to sort the observations in a window.
column_name1= column to be selected
coulmn_name2= column on which window function is to be applied
column_name3= column on whose basis partition of rows is to be done
new_column= Name of new column
table_name= Name of table
*/


