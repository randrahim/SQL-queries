/* Count how many distinct customers there were on each day
A table named sales has been created, with 4 columns:

orderdate
customerkey
salesid
salesvalue

Show a distinct count of each customer key broken down by day. Name the output column as customers.
*/

SELECT orderdate, COUNT(DISTINCT customerkey)  AS customers
FROM sales
GROUP BY orderdate
