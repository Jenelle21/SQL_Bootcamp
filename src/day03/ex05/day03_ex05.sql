SELECT p.name pizzeria_name
FROM pizzeria p
         JOIN person_visits pv on p.id = pv.pizzeria_id
         JOIN person p2 on p2.id = pv.person_id
WHERE p2.name = 'Andrey'
EXCEPT
SELECT p.name pizzeria_name
FROM pizzeria p
         JOIN menu m on p.id = m.pizzeria_id
         JOIN person_order po on m.id = po.menu_id
         JOIN person p3 on p3.id = po.person_id
WHERE p3.name = 'Andrey'
ORDER BY pizzeria_name