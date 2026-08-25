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
FROM payments

-- LAG Example 2
WITH cte_main AS (
  SELECT 
    customernumber,
    paymentdate,
    amount,
    LAG(amount) over (
      partition BY customernumber 
      ORDER BY paymentdate
    ) AS pre_payment
FROM payments)

SELECT *,
      amount - pre_payment as difference 
FROM cte_main


