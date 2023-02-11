SELECT COALESCE(person.name, '-') AS person_name,
       p.visit_date,
       COALESCE(d.name, '-')      AS pizzeria_name
FROM person
         FULL JOIN (SELECT *
                    FROM person_visits
                    WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS p
                   ON person.id = p.person_id
         FULL JOIN (SELECT * FROM pizzeria) AS d
                   ON d.id = p.pizzeria_id
ORDER BY person_name,
         visit_date,
         pizzeria_name;