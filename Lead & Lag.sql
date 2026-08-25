-- LEAD Example
SELECT 
  customernumber,
  paymentdate,
  amount,
  LEAD(amount) over (
    partition BY customernumber 
    ORDER BY paymentdate
  ) AS next_payment
FROM payments;


-- LAG Example
SELECT 
  customernumber,
  paymentdate,
  amount,
  LAG(amount) over (
    partition BY customernumber 
    ORDER BY paymentdate
  ) AS previous_payment
FROM classicmodels.payments
