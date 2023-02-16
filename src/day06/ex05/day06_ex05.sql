COMMENT ON TABLE person_discounts
    IS 'Таблица хранит скидки каждого клиента в каждой пиццерии, зависящие от кол-ва заказов в данной пиццерии';

COMMENT ON COLUMN person_discounts.id
    IS 'Основной ID';

COMMENT ON COLUMN person_discounts.person_id
    IS 'ID клиента';

COMMENT ON COLUMN person_discounts.pizzeria_id
    IS 'ID пиццерии';

COMMENT ON COLUMN person_discounts.discount
    IS 'Скидка данного клиента в данной пиццерии';