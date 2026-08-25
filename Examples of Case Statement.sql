-- Examples of Case Statement

SELECT DISTINCT comments
FROM orders;

SELECT *, 
  CASE WHEN comments LIKE '%dispute%' THEN 1 ELSE 0 END AS disputed,
  CASE WHEN comments LIKE '%negotiate%' THEN 'Negotiated Order'
  WHEN comments LIKE '%dispute%' THEN 'Disputed Order'
  ELSE 'No Dispute or negotaite orders' END AS status_1
FROM orders;

