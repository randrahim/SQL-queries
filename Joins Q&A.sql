-- Show the customer first name, last name, orderdate and status for each order in the orders table with a matching customer in the customer table
SELECT t2.contactFirstName, t2.contactLastName, t1.orderdate, t1.status
FROM orders t1
INNER JOIN customers t2
ON t1.customerNumber = t2. customerNumber

-- Display the first name and last name of all customers, and the order date and ordernumber of all their orders, even if the customer made no orders.
SELECT t1.contactFirstName, t1.contactLastName, t2.orderDate, t2.orderNumber
FROM customers t1
LEFT JOIN orders t2
ON t1.customerNumber = t2. customerNumber
WHERE t2.orderNumber is not null
