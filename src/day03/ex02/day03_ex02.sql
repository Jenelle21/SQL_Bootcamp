SELECT pizza_name, price, p.name pizzeria_name
FROM menu
         JOIN pizzeria p on p.id = menu.pizzeria_id
EXCEPT
SELECT pizza_name, price, p.name pizzeria_name
FROM menu
         JOIN pizzeria p on p.id = menu.pizzeria_id
         JOIN person_order po on menu.id = po.menu_id
ORDER BY pizza_name, price;