-- Example 1
SELECT 
customernumber,
t1.ordernumber,
row_number() over (partition BY customernumber order 
BY orderdate) AS purchase_number
FROM classicmodels.orders t1
ORDER BY customernumber, t1.ordernumber; 


-- Example 2
SELECT DISTINCT
  t3.customername,
  t1.customernumber,
  t1.ordernumber, 
  orderdate,
  productcode,
  row_number() over (partition BY t3.customernumber ORDER BY orderdate) AS purchase_number
FROM classicmodels.orders t1
JOIN classicmodels.orderdetails t2 ON t1.ordernumber = t2.ordernumber
JOIN classicmodels.customers t3 ON t1.customernumber = t3.customernumber
ORDER BY t3.customername;

-- Example 3
WITH main_cte AS (
  SELECT 
    customernumber,
    t1.ordernumber,
    row_number() over (PARTITION BY customernumber ORDER BY 
    orderdate) as purchase_number
  FROM classicmodels.orders t1
  ORDER BY customernumber, t1.ordernumber
)
SELECT * FROM main_cte WHERE purchase_number = 2;

