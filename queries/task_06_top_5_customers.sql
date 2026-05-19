-- Q6:  Who are our top 5 customers by total amount spent?

SELECT TOP 5
c.customer_name,
SUM(p.price * o.quantity) AS Total_Amt_Spent
FROM orders AS O
INNER JOIN customers AS c
ON o.customer_id = c.customer_id
INNER JOIN products AS p
ON o.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY Total_Amt_Spent DESC;
