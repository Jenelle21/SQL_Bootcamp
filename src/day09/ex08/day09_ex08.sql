create or replace function fnc_fibonacci(pstop integer default 10)
    returns setof integer
as
$$
    with recursive Fibonacci(a,b,c) as
             (
                 values (0, 1, 1)
                 union all
                 (select b, c, b+c
                 from Fibonacci where b < pstop)
             )
    select a from Fibonacci;
$$ language sql;

select * from fnc_fibonacci(100);
select * from fnc_fibonacci();