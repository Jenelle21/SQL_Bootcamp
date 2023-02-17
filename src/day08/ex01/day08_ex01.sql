BEGIN; --start the session 1
select * from pizzeria where name  = 'Pizza Hut';
update pizzeria set rating = 4 where name = 'Pizza Hut';
commit;
select * from pizzeria where name  = 'Pizza Hut';

BEGIN; -- start the session 2
select * from pizzeria where name  = 'Pizza Hut';
update pizzeria set rating = 3.6 where name = 'Pizza Hut';
commit;
select * from pizzeria where name  = 'Pizza Hut';