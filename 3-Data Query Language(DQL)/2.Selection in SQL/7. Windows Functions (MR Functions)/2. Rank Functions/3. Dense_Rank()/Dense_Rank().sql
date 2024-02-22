-- DENSE_RANK() without PARTITION BY  and  ORDER BY 
SELECT 
  sales_employee, 
  fiscal_year, 
  sale, 
  DENSE_RANK() OVER () sales_rank 
FROM 
  sales;
  
-- DENSE_RANK() without PARTITION BY 
SELECT 
  sales_employee, 
  fiscal_year, 
  sale, 
  DENSE_RANK() OVER (ORDER BY sale DESC) sales_rank 
FROM 
  sales;

-- DENSE_RANK() without ORDER BY
SELECT 
  sales_employee, 
  fiscal_year, 
  sale, 
  DENSE_RANK() OVER (PARTITION BY fiscal_year) sales_rank 
FROM 
  sales;


-- DENSE_RANK() with PARTITION BY and ORDER BY
SELECT 
  sales_employee, 
  fiscal_year, 
  sale, 
  DENSE_RANK() OVER (PARTITION BY fiscal_year ORDER BY sale DESC) sales_rank 
FROM 
  sales;