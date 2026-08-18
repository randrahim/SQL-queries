-- Show all columns for customers from the USA with surname Brown:

SELECT * 
FROM customers 
WHERE country = 'USA'
AND contactlastName = 'Brown'

-- For employees who are sales reps display their email:
SELECT email
FROM employees 
WHERE jobTitle = 'Sales Rep'
