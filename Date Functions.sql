-- Using DATEDIF
SELECT 
  a.ordernumber, 
  DATEDIFF(requireddate, orderdate) days_until_required
  -- Or using DATEDIFF(now(), orderdate) days_until_required
FROM orders a

-- Using DATE_ADD
SELECT 
  a.ordernumber, 
  orderdate,
  DATE_ADD(requireddate, interval 1 year) AS one_year_from_order
FROM orders a

-- Using DATE_SUB
SELECT *
FROM classicmodels.orders a
WHERE orderdate >= ("20060101",  interval 1 year)

-- Using DATE_ADD and DATE_SUB
SELECT 
  *, 
  DATE_ADD(orderdate, interval 1 year) AS one_year_after,
  DATE_SUB(orderdate, interval 2 month) AS two_month_ago
FROM orders

