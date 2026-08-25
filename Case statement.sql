SELECT 
CASE WHEN creditLimit < 75000 THEN 'a: Less than $75k'
     WHEN creditLimit between 75000 and 100000 THEN 'b: $75k - $100k'
     WHEN creditLimit between 100000 and 150000 THEN 'c: $100k - $150k'
     WHEN creditLimit > 150000 THEN 'd: over $150k'
ELSE 'Other' END AS credit_limit_grp,
COUNT(DISTINCT c.customernumber) as customers
FROM customers c
GROUP BY 1;
