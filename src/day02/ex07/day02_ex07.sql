SELECT pizzeria.name as pizzeria_name
FROM person_visits
         JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
         JOIN menu ON pizzeria.id = menu.pizzeria_id
WHERE person_visits.person_id = (SELECT id FROM person WHERE name = 'Dmitriy')
  AND person_visits.visit_date = '20220108'
  AND menu.price < 800;