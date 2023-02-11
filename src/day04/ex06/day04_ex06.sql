CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT pizzeria.name AS pizzeria_name
FROM person_visits
         JOIN person ON person_visits.person_id = person.id
         JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
         JOIN menu ON menu.pizzeria_id = pizzeria.id
WHERE person.name = 'Dmitriy'
  AND menu.price < 800
  AND person_visits.visit_date = '2022-01-08';