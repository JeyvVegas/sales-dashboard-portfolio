SELECT P.product_id, 
DATE(O.order_date) AS date, 
P.product_name, 
SUM(price * quantity) AS total_revenue, 
SUM(quantity) AS quantity
FROM orders O INNER JOIN products P ON O.product_id = P.product_id
GROUP BY P.product_id, P.product_name, date
ORDER BY date;