-- Q4: How many orders did each city place? Rank cities from highest to lowest.
SELECT 
    c.city, 
    COUNT(*) AS order_count
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.city
ORDER BY order_count DESC;