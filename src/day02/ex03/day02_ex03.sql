WITH days AS (
    SELECT generate_series('2022-01-01'::DATE, '2022.01.10'::DATE, '1 day')::DATE AS visit_date
)
SELECT days.visit_date AS missing_date
FROM (SELECT DISTINCT visit_date FROM person_visits WHERE person_id BETWEEN 1 AND 2) AS k
         FULL OUTER JOIN days
                         ON k.visit_date = days.visit_date
WHERE k.visit_date IS NULL