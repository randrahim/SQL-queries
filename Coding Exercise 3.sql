-- Show all Employees and Customers
/* 
Two tables called customer and employee have been created with the following columns:

Customer:
customerid
firstname
lastname
country

Employee:
employeeid
firstname
lastname
country

Show the firstname, lastname and country of all customers and employees in the same output, and do not include duplicates.
*/

SELECT firstname, lastname , country 
FROM Customer

UNION

SELECT firstname, lastname , country
FROM Employee
