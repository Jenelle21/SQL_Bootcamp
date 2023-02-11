SELECT DISTINCT person.id FROM person
JOIN person_visits ON person.id = person_visits.person_id
WHERE person_visits.visit_date BETWEEN '2022-01-06' AND '2022-01-09'
OR pizzeria_id = 2 ORDER BY person.id DESC;