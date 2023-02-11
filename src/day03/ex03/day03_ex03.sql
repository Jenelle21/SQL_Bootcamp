WITH men (pizzeria_name) AS (
    SELECT pizzeria.name pizzeria_name
    FROM pizzeria
             JOIN person_visits pv on pizzeria.id = pv.pizzeria_id
             JOIN person p on p.id = pv.person_id
    WHERE p.gender = 'male'
),
     women (pizzeria_name) AS (
         SELECT pizzeria.name pizzeria_name
         FROM pizzeria
                  JOIN person_visits pv on pizzeria.id = pv.pizzeria_id
                  JOIN person p on p.id = pv.person_id
         WHERE p.gender = 'female'
     )

SELECT pizzeria_name
FROM (
         (
             SELECT pizzeria_name
             FROM women
             EXCEPT ALL
             SELECT pizzeria_name
             FROM men
         )
         UNION ALL
         (
             SELECT pizzeria_name
             FROM men
             EXCEPT ALL
             SELECT pizzeria_name
             FROM women
         )
     ) answer
ORDER BY pizzeria_name;