-- Select distinct countries from customers table where city has 'New' string:

SELECT DISTINCT country
FROM customers
WHERE city
LIKE '%New%'

-- Select distinct countries from customers table where email address has 'classicmodel' string:

SELECT DISTINCT country
FROM customers
WHERE email
LIKE '%classicmodel%'

-- Select all records and order them by lastname
SELECT *
FROM employees
ORDER BY lastName

