create or replace function fnc_person_visits_and_eats_on_date(
    pperson varchar default 'Dmitriy',
    pprice numeric default 500,
    pdate date default '2022-01-08')
    returns table
            (
                person_visits_and_eats_on_date varchar
            )
as
$$
begin
    return query (
        select pz.name
        from pizzeria pz
                 inner join person_visits pv on pv.pizzeria_id = pz.id
                 inner join person p on p.id = pv.person_id
                 inner join menu m on m.pizzeria_id = pz.id
                 inner join person_order po on m.id = po.menu_id
        where m.price < pprice
          and p.name in (pperson)
          and pv.visit_date in (pdate)
          and po.order_date in (pdate));
end;
$$ language plpgsql;

SELECT *
FROM fnc_person_visits_and_eats_on_date(pprice := 800);
SELECT *
FROM fnc_person_visits_and_eats_on_date(pperson := 'Anna', pprice := 1300, pdate := '2022-01-01');

-- Функция с выводом, соответствующим чек-листу. По таску некорректна.

-- create or replace function fnc_person_visits_and_eats_on_date(
--     pperson varchar default 'Dmitriy',
--     pprice numeric default 500,
--     pdate date default '2022-01-08')
--     returns table
--             (
--                 person_visits_and_eats_on_date varchar
--             )
-- as
-- $$
-- begin
--     return query (
--         select pz.name
--         from pizzeria pz
--                  inner join person_visits pv on pv.pizzeria_id = pz.id
--                  inner join person p on p.id = pv.person_id
--                  inner join menu m on m.pizzeria_id = pz.id
--         where m.price < pprice
--           and p.name in (pperson)
--           and pv.visit_date in (pdate));
-- end;
-- $$ language plpgsql;