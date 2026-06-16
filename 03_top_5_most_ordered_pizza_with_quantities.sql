# List the top 5 most ordered pizza types along with their quantities.

use pizzahut;

SELECT 
    pizza_id,
    SUM(order_details.quantity) AS quantities_ordered
FROM
    order_details
GROUP BY order_details.pizza_id
ORDER BY quantities_ordered DESC
LIMIT 5;
