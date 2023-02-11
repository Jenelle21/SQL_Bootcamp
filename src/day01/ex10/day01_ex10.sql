SELECT person.name AS person_name,
       menu.pizza_name AS pizza_name,
       pizzeria.name AS pizzeria_name
FROM person_order
         JOIN person ON person.id = person_order.person_id
         JOIN menu ON person_order.menu_id = menu.id
         JOIN pizzeria ON (SELECT pizzeria_id
                           FROM menu
                           WHERE person_order.menu_id = menu.id) = pizzeria.id
ORDER BY person_name,
         pizza_name,
         pizzeria_name;