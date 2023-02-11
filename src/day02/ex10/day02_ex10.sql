SELECT pn1.name    AS person_name1,
       pn2.name    AS person_name2,
       pn1.address AS common_address
FROM person AS pn1
         INNER JOIN person AS pn2
                    ON pn1.address = pn2.address
WHERE pn1.name <> pn2.name
  AND pn1.address = pn2.address
  AND pn1.id > pn2.id
ORDER BY person_name1,
         person_name2,
         common_address;