-- Show the customer name of the company which made the most amount of orders.
SELECT 
  customername, C
  OUNT(ordernumber) AS orders
FROM orders t1
INNER JOIN customers t2
ON t1.customerNumber = t2.customerNumber
GROUP BY custermerMame
ORDER BY orders DESC
LIMIT 1;

-- Display each customers first and last order date.
SELECT 
  customername, 
  MIN(orderDate) AS first_orderdate, 
  MAX(orderDate) AS latest_orderdate, 
FROM orders t1
INNER JOIN customers t2
ON t1.customerNumber = t2.customerNumber
GROUP BY custermerMame;
