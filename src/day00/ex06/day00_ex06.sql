SELECT
    (SELECT name FROM person where id = person_order.person_id) AS name,
    CASE
        WHEN (SELECT name FROM person where id = person_order.person_id) = 'Denis'
            THEN TRUE
            ELSE FALSE
        END as check_name
FROM person_order
WHERE (menu_id = 13 OR menu_id = 14 OR menu_id = 18) AND order_date = '20220107';