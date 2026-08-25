SELECT *
FROM employees t1
LEFT JOIN customers t2 
On t1.employeenumber = t2.employeenumber

SELECT *
FROM employees t1
LEFT JOIN customers t2 
On t1.employeenumber = t2.employeenumber
WHERE t2.employeenumber is null
and jobtitle = 'Sales Rep'

SELECT firstname, lastname, cutomername
FROM employees t1
LEFT JOIN customers t2 
On t1.employeenumber = t2.employeenumber
