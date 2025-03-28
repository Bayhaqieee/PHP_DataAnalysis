-- Group by province and count the total order and total price (Single Column)
SELECT province, 
COUNT(DISTINCT order_id) as total_order, 
SUM(item_price) as total_price 
FROM sales_retail_2019 GROUP BY province;

-- Group by province and brand, count the total order and total price (Multiple Column)
SELECT province,brand,
COUNT(DISTINCT order_id) as total_order,
SUM(item_price) as total_price FROM sales_retail_2019
GROUP BY province, brand;

-- Group by province and count the total order and total price (Single Column) with alias (Aggregate Function)
SELECT province, COUNT(DISTINCT order_id) as total_unique_order, SUM(item_price) as revenue FROM sales_retail_2019 
GROUP BY province;