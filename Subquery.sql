SELECT AVG(orders)
FROM (
  SELECT 
    orderdate,
    COUNT(ordernumber) AS orders
  FROM orders
  GROUP BY orderdate
  ) t1
WHERE orderdate > '2005-05-01'
