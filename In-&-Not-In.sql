-- Select the employees who have any of these emails:

SELECT *
FROM employees
WHERE UPPER(email) IN (
  'pmarsh@classicmodelcars.com',
  'gbondur@classicmodelcars.com',
  'abow@classicmodelcars.com')

-- Select the employees who doesn't have any of these emails:

SELECT *
FROM employees
WHERE UPPER(email) NOT IN (
  'pmarsh@classicmodelcars.com',
  'gbondur@classicmodelcars.com',
  'abow@classicmodelcars.com')

-- Show all columns for customers who are from New York, London or Mumbai using IN
  
SELECT *
FROM customer
WHERE cust_city IN ('New York', 'London', 'Mumbai')
