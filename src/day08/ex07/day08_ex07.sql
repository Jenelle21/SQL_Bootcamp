BEGIN; --session1

BEGIN; --session2

update pizzeria set rating=2 where id=1; --session1

update pizzeria set rating=3 where id=2; --session2

update pizzeria set rating=5 where id=2; --session1

update pizzeria set rating=4 where id=1; --session2

commit; --session1

commit; --session2