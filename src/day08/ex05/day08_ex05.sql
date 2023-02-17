BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED; --session1
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED; --session2

select sum(rating) FROM pizzeria; --session1

update pizzeria set rating=1 where name = 'Pizza Hut'; --session2
commit; --session2

select sum(rating) FROM pizzeria; --session1
commit; --session1

select sum(rating) FROM pizzeria; --session1

select sum(rating) FROM pizzeria; --session2