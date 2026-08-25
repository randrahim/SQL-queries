SELECT
  t1.ordernumber, 
  orderdate,
  quantityordered,
  productname,
  productline,
CASE WHEN quantityordered > 40 AND productline = 'Motorcycles' 
     THEN 1 ELSE 0 END AS ordered_over_40_motorcycles
FROM classicmodels.orders t1
JOIN classicmodels.orderdetails t2 ON t1.ordernumber = t2.ordernumber
JOIN classicmodels.products t3 ON t2.productcode = t3.productcode;


WITH main_cte AS (
  SELECT
    t1.ordernumber, 
    orderdate,
    quantityordered,
    productname,
    productline,
  CASE WHEN quantityordered > 40 AND productline = 'Motorcycles' THEN 1 
       ELSE 0 END AS ordered_over_40_motorcycles
  FROM classicmodels.orders t1
  JOIN classicmodels.orderdetails t2 ON t1.ordernumber = t2.ordernumber
  JOIN classicmodels.products t3 ON t2.productcode = t3.productcode 
)

  SELECT 
    orderdate, 
    sum(ordered_over_40_motorcycles) AS over_40_bike_sale
  FROM main_cte
  GROUP BY orderdate
