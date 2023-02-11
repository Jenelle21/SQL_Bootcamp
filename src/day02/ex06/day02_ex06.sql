SELECT pizza_name,
       pizzeria.name as pizzeria_name
FROM person_order
         JOIN menu ON person_order.menu_id = menu.id
         JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE person_order.person_id IN (SELECT id FROM person WHERE name IN ('Denis', 'Anna'))
ORDER BY pizza_name,
         pizzeria_name