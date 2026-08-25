WITH 
  cte_orders as (
    SELECT 
      orderdate, 
      COUNT(ordernumber) orders
    FROM orders
    GROUP BY orderdate
  ),

  cte_payments as (
    SELECT *
    FROM payments
  )

SELECT AVG(orders)
FROM cte_orders
WHERE orderdate > '2005-05-01'
  
