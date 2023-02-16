SELECT p.name, count(*) count_of_visits
FROM person p
         INNER JOIN person_visits pv ON pv.person_id = p.id
GROUP BY 1
ORDER BY 2 DESC, 1
LIMIT 4;