create or replace function func_minimum(VARIADIC arr numeric[])
    returns numeric as
$$
select min(arr[i])
from generate_subscripts(arr, 1) g(i);
$$
    language sql;

SELECT func_minimum(VARIADIC arr => ARRAY [10.0, -1.0, 5.0, 4.4]);