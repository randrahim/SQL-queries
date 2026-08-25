SELECT A.customerName, B.amount, B.paymentDate
FROM customers A
LEFT JOIN payments B
ON A.customerNumber = B.customerNumber
WHERE B.customerNumber is null
