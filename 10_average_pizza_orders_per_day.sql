# Group the orders by date and calculate the average number of pizzas ordered per day.

use pizzahut;

SELECT 
    AVG(quantity)
FROM
    (SELECT 
        order_date, SUM(order_details.quantity) AS quantity
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY order_date) AS order_quantity;
    