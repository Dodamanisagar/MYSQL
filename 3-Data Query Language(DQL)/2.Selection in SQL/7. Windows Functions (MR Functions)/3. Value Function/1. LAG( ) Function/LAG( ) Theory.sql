/*LAG() Function:-
1.Function:-
- Returns the value of the Nth row before the current row in a partition. It returns NULL if no preceding row exists.

2. Syntax:-
LAG(expression, offset, default_value) 
OVER (
      PARTITION BY partition_expression 
      ORDER BY sort_expression
      )
      
- expression- The column or expression to retrieve the value from.
- offset    - The number of rows before the current row from which to retrieve the value. It defaults to 1 if not specified.
- default_value - Optional. The value to return if the offset row does not exist. If not specified, it defaults to NULL.

3. Use Cases:-
1. Comparing Trends: Useful for comparing the current row's value with the value of a previous row.
2. Calculating Differences: Identifying changes or trends between consecutive rows.
3. Data Imputation: Filling in missing values by projecting past values.

*/