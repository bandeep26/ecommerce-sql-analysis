-- Q3: Which orders were placed in the city of Mumbai, and what was the product ordered?

SELECT 
    o.order_id,
    c.customer_name,
    c.city,
    p.product_name,
    o.order_date
FROM orders AS o
INNER JOIN customers AS c ON o.customer_id = c.customer_id
INNER JOIN products AS p ON o.product_id = p.product_id
WHERE c.city = 'Mumbai';