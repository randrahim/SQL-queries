-- Display the orderdate, ordernumber, salesrepemployeenumber for each sales reps second order.
WITH cte_main as (
  SELECT 
    orderdate, 
    t1.ordernumber, 
    salesrepemployeenumber,
    ROW_NUMBER() over (partition BY salesrepemployeenumber ORDER BY orderdate) AS repordernumber
  FROM orders t1
  INNER JOIN customers t2
  ON t1.customernumber = t2.customernumber
  JOIN employees t3
  ON t2.salesrepemployeenumber = t3.employeeNumber
)
SELECT *
FROM cte_main
WHERE repordernumber = 2;
