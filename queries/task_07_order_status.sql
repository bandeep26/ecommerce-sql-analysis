-- Q7: How many orders were Delivered vs Cancelled vs Pending?

-- Solved using JOIN
SELECT 
o.status,
COUNT(o.order_id) AS No_of_orders
FROM orders AS o
INNER JOIN customers AS c 
ON o.customer_id = c.customer_id
INNER JOIN products AS p
ON o.product_id = p.product_id
GROUP BY o.status
ORDER BY No_of_orders DESC;

-- Solved without JOIN
SELECT
status,
COUNT(order_id) AS No_of_orders
FROM orders
GROUP BY status
ORDER BY No_of_orders DESC