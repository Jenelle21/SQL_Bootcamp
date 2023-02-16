WITH formula_and_average AS (
    SELECT p.address,
           round(MAX(p.age) - CAST(MIN(p.age) AS DEC(6, 2)) / MAX(p.age), 2) formula,
           round(AVG(p.age), 2)                                              average
    FROM person p
    GROUP BY 1
    ORDER BY 1
)

SELECT address,
       formula,
       average,
       formula > average comparison
FROM formula_and_average;