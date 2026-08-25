SELECT paymentDate, sum(amount) as total_payments
FROM payments
GROUP BY paymentDate
ORDER BY total_payments;

SELECT paymentDate, ROUND(SUM(amount),1) as total_payments
FROM payments
GROUP BY paymentDate
ORDER BY 1;

SELECT paymentDate, sum(amount) as total_payments
FROM payments
GROUP BY paymentDate
HAVING total_payments > 5000
ORDER BY total_payments desc;

SELECT paymentDate, ROUND(SUM(amount),1) as total_payments
FROM payments
GROUP BY paymentDate
HAVING paymentDate > '2003-06-01'
ORDER BY 1;
