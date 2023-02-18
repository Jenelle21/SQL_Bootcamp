drop function if exists fnc_persons_female();
drop function if exists fnc_persons_male();

create or replace function fnc_persons(pgender varchar default 'female')
    returns table
            (
                id      bigint,
                name    varchar,
                age     integer,
                gender  varchar,
                address varchar
            )
as
$$
select *
from person p
where p.gender in (pgender);
$$ language sql;

SELECT *
FROM fnc_persons(pgender := 'male');

SELECT *
FROM fnc_persons();