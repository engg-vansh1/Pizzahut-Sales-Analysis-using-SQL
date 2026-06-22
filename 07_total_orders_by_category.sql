USE pizzahut;

# Join the necessary tables to find the total quantity of each pizza category ordered.

CREATE VIEW merger AS
    SELECT 
        pizza_type_id,
        SUM(order_details.quantity) AS total_quantities
    FROM
        pizzas
            JOIN
        order_details ON pizzas.pizza_id = order_details.pizza_id
    GROUP BY pizza_type_id;
 
SELECT 
    category,
    SUM(merger.total_quantities) AS total_orders_by_category
FROM
    pizza_types
        INNER JOIN
    merger ON pizza_types.pizza_type_id = merger.pizza_type_id
GROUP BY category
ORDER BY total_orders_by_category DESC;
