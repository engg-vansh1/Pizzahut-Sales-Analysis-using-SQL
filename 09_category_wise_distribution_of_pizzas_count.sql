# Join relevant tables to find the category-wise distribution of pizzas.

use pizzahut;

SELECT 
    category, COUNT(pizza_type_id) AS types_available
FROM
    pizza_types
GROUP BY category;