SELECT *
FROM customers;

SELECT *
FROM employees;

SELECT 
  'customer' as type,
  contactFirstName as firstname, 
  contactLastName as lastname,
  city
FROM customers 

UNION

SELECT 'employee' as type,
  firstName,
  lastName,
  'Unknown' as city
FROM employees
