-- Show all customers and their orders, even if they made no orders. Both tables have a cust_code field

SELECT *
FROM customer cust
LEFT JOIN orders ord
ON cust.cust_code = ord.cust_code
