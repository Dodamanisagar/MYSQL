/*
Value_functio_name(expression, offset, default_value) 
OVER (
  PARTITION BY partition_expression 
  ORDER BY sort_expression
)

1. expression:-
- This is the column or expression from which you want to retrieve the value.

2. offset:-
- The offset specifies the number of rows to look ahead or back. 

3. default_value:-
- This is the default value if there is no next/previous row. For example, the last row in the result set (or in a partition) will not have the next row.
- If you don’t specify the default_value, it’ll default to NULL.


*/