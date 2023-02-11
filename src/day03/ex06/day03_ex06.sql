WITH pizza_id AS (SELECT m1.pizza_name, m1.pizzeria_id pizzeria_id_1, m2.pizzeria_id pizzeria_id_2, m1.price
                  FROM menu m1,
                       menu m2
                  WHERE m1.pizza_name = m2.pizza_name
                    AND m1.price = m2.price
                    AND m1.id > m2.id)

SELECT p.pizza_name, pz1.name pizzeria_name_1, pz2.name pizzeria_name_2, p.price
FROM pizza_id p
         JOIN pizzeria pz1 on pz1.id = p.pizzeria_id_1
         JOIN pizzeria pz2 on pz2.id = p.pizzeria_id_2
ORDER BY pizza_name;