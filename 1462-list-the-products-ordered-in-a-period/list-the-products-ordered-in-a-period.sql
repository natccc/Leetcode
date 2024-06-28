# Write your MySQL query statement below
SELECT product_name, SUM(unit) AS unit
FROM products
JOIN orders 
USING(product_id)
WHERE order_date LIKE '2020-02-%'
GROUP BY product_id
HAVING unit>=100
