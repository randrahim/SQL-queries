-- 1) all Records where customers last name is not Young:

SELECT * FROM classicmodels.customers
WHERE contactlastname <> 'Young'

-- 2) show Customername, Girst Name, Last name, Phone, City & Country where First name is Julie and she is from USA:

SELECT customername, contactfirstname, contactlastname, phone, city, country
FROM classmodels.customers
WHERE country = 'USA' and contactfirstname = 'Julie'

-- 3) First Name and Last name for customers from Norway or Sweden:

SELECT contactfirstname, contactlastname 
FROM classicmodel.customers
WHERE country = 'Norway' or country = 'Sweden'
