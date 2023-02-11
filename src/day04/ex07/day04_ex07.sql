INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES (((SELECT MAX(id) + 1 FROM person_visits)),
        (SELECT id FROM person WHERE name = 'Dmitriy'),
        (SELECT MIN(pizzeria_id)
         FROM menu
         WHERE price < 800
           AND menu.pizzeria_id <> (SELECT id from pizzeria WHERE name = (SELECT * FROM mv_dmitriy_visits_and_eats))),
        '2022-01-08');

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;