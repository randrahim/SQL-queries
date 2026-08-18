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
