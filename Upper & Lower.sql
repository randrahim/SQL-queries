-- LOWER() - Convert a string to lowercase

SELECT *
FROM employees 
WHERE LOWER(firstname) = 'leslie'

-- UPPER() - Convert a string to uppercase
  
SELECT *
FROM employees 
WHERE UPPER(email) = 'DMURPHY@CLASSICMODEL.COM'
