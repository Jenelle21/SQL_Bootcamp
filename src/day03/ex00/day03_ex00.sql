SELECT pizza_name, price, p.name, pv.visit_date
FROM menu m
         JOIN pizzeria p on p.id = m.pizzeria_id
         JOIN person_visits pv on p.id = pv.pizzeria_id
         JOIN person p2 on p2.id = pv.person_id
WHERE price BETWEEN 800 AND 1000
  AND p2.name = 'Kate'
ORDER BY pizza_name, price, p.name;