SELECT cp.name
FROM (SELECT name
      FROM person
               JOIN person_order ON person.id = person_order.person_id
               JOIN menu ON menu.id = person_order.menu_id
      WHERE gender = 'female'
        AND pizza_name = 'cheese pizza') AS cp
         JOIN
     (SELECT name
      FROM person
               JOIN person_order ON person.id = person_order.person_id
               JOIN menu ON menu.id = person_order.menu_id
      WHERE gender = 'female'
        AND pizza_name = 'pepperoni pizza') AS pp
     ON cp.name = pp.name
ORDER BY cp.name