SELECT COUNT(orderNumber) as Orders
FROM orders;

SELECT productCode, COUNT(orderNumber) as Orders
FROM orderdetails
GROUP BY productCode;

SELECT 
  paymentDate,
  MAX(amount) as highest_payment,
  MIN(amount) as lowest_payment,
FROM payments
GROUP BY paymentDate
HAVING paymentDate = '2003-12-09';

SELECT 
  paymentDate,
  AVG(amount) as average_payment_received,
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate;
