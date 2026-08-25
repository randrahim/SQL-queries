-- Using CAST
SELECT 
  *, 
  CAST(paymentDate as DATETIME) AS payment_time
FROM payments;

  
-- Using SUBSTRING
SELECT 
  CUSTOMERNUMBER,
  PAYMENTDATE,
  SUBSTRING(PAYMENTDATE, 1,7) AS Month_Day
FROM PAYMENTS;


-- Using CONCAT
SELECT 
  EMPLOYEENUMBER,
  LASTNAME,
  FIRSTNAME,
  CONCAT(firstName, ' ', Lastname) AS FULLNAME
FROM employees;

SELECT 
  customername,
  CONCAT(city, '-', country) AS city_country
FROM customers;

