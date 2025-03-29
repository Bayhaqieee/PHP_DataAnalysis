-- Query to find customers with multiple subscriptions
SELECT customer_id FROM Subscription GROUP BY customer_id HAVING COUNT(customer_id) > 1;

-- Query to find all subscriptions for customers with multiple subscriptions
SELECT 
	customer_id,
    product_id,
    subscription_date
FROM Subscription 
WHERE customer_id IN 
	(SELECT 
    	customer_id 
     FROM Subscription 
     GROUP BY customer_id 
     HAVING COUNT(customer_id) > 1
  	) 
ORDER BY customer_id ASC;

-- Query to merge customer and subscription tables for customers with multiple subscriptions
SELECT b.name,
	   b.address,
       b.phone, 
       a.product_id, 
       a.subscription_date 
FROM subscription a 
JOIN customer b 
ON a.customer_id=b.id
WHERE b.id IN 
(
	SELECT 
    	customer_id 
        FROM Subscription 
    GROUP BY customer_id 
    HAVING COUNT(customer_id) > 1
) 
ORDER BY b.id ASC;

-- SQL queries to find the maximum total price and penalty for each product in the invoice table
SELECT product_id, MAX(total_price) AS total FROM invoice GROUP BY product_id;
SELECT product_id, MAX(total_price) AS total FROM invoice GROUP BY product_id HAVING MAX(total_price) > 1000000;
SELECT product_id, MAX(pinalty) AS total FROM invoice GROUP BY product_id HAVING MAX(pinalty) > 30000;

-- SQL queries to find the minimum total price and penalty for each product in the invoice table
SELECT product_id, AVG(total_price) AS total FROM invoice GROUP BY product_id;
SELECT product_id, AVG(total_price) AS total FROM invoice GROUP BY product_id HAVING AVG(total_price) > 100000;
SELECT product_id, AVG(pinalty) AS total FROM invoice GROUP BY product_id HAVING AVG(pinalty) > 30000;

-- SQL queries to find the average total price and penalty for each product in the invoice table
SELECT product_id, AVG(pinalty), count(customer_id) AS total FROM invoice GROUP BY product_id HAVING count(customer_id) > 20;