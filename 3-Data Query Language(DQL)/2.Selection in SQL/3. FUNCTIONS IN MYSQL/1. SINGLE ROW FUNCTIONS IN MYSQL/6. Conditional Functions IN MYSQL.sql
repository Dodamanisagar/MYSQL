-- MySQL Workbench Theme: Solarized Dark

-- IF Function
SELECT IF(5 > 3, 'Yes', 'No') AS Result;

-- CASE Function
SELECT
    product_name,
    CASE
        WHEN units_in_stock > 50 THEN 'In Stock'
        WHEN units_in_stock <= 50 AND units_in_stock > 0 THEN 'Low Stock'
        ELSE 'Out of Stock'
    END AS Stock_Status
FROM products;

-- NULLIF Function
SELECT NULLIF(10, 10) AS Result;

-- COALESCE Function
SELECT COALESCE(NULL, 'Default') AS Result;

-- GREATEST Function
SELECT GREATEST(5, 10, 8) AS Result;

-- LEAST Function
SELECT LEAST(5, 10, 8) AS Result;

-- IFNULL Function
SELECT IFNULL(NULL, 'Fallback') AS Result;
