SELECT person.id AS id_person,
       person.name AS name_person,
       person.age,
       person.gender,
       person.address,
       pizzeria.id AS id_pizzeria,
       pizzeria.name AS name_pizzeria,
       pizzeria.rating
FROM person
         CROSS JOIN pizzeria
ORDER BY person.id,
         pizzeria.id;