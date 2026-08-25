SELECT paymentDate, sum(amount) as total_payments
FROM payments
GROUP BY paymentDate
ORDER BY 1

SELECT paymentDate, ROUND(SUM(amount),1) as total_payments
FROM payments
GROUP BY paymentDate
