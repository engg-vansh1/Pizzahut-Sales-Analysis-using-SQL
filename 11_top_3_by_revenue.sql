# Determine the top 3 most ordered pizza types based on revenue.

use pizzahut;
 
SELECT 
    t.pizza_id, ROUND(pizzas.price * total_orders, 0) AS revenue
FROM
    (SELECT 
        pizza_id, COUNT(quantity) AS total_orders
    FROM
        order_details
    GROUP BY pizza_id) AS t
        JOIN
    pizzas ON pizzas.pizza_id = t.pizza_id
ORDER BY revenue DESC
LIMIT 3
;
