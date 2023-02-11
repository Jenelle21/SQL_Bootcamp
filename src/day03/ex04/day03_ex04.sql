WITH men (pizzeria_name) AS (
    SELECT pizzeria.name pizzeria_name
    FROM pizzeria
             JOIN menu m on pizzeria.id = m.pizzeria_id
             JOIN person_order pv on m.id = pv.menu_id
             JOIN person p on p.id = pv.person_id
    WHERE p.gender = 'male'
),
     women (pizzeria_name) AS (
         SELECT pizzeria.name pizzeria_name
         FROM pizzeria
                  JOIN menu m on pizzeria.id = m.pizzeria_id
                  JOIN person_order pv on m.id = pv.menu_id
                  JOIN person p on p.id = pv.person_id
         WHERE p.gender = 'female'
     )

SELECT pizzeria_name
FROM (
         (
             SELECT pizzeria_name
             FROM women
             EXCEPT
             SELECT pizzeria_name
             FROM men
         )
         UNION
         (
             SELECT pizzeria_name
             FROM men
             EXCEPT
             SELECT pizzeria_name
             FROM women
         )
     ) answer
ORDER BY pizzeria_name;