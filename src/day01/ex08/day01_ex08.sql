SELECT order_date,
       person_information
FROM person_order
         NATURAL JOIN
     (SELECT id AS person_id,
             concat(name,' (age:', age ,')') AS person_information
      FROM person) AS pi
ORDER BY order_date,
         person_information;