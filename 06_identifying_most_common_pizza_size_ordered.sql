-- Identify the most common pizza size ordered.

use pizzahut;

-- Identify the most common pizza size ordered.

SELECT 
    pizzas.size, SUM(quantity) AS sum_of_quantity
FROM
    order_details
        INNER JOIN
    pizzas ON order_details.pizza_id = pizzas.pizza_id
GROUP BY size
ORDER BY sum_of_quantity DESC;
