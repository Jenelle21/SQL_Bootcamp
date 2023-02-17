BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ; --session1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ; --session2

select sum(rating) from pizzeria; --session1

update pizzeria set rating=5 where name = 'Pizza Hut'; --session2
commit; --sesssion2

select sum(rating) from pizzeria; --session1
commit; --session1

select sum(rating) from pizzeria; --session1

select sum(rating) from pizzeria; --session2