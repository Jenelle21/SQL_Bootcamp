--Session1;
BEGIN; --starting a transation
update pizzeria set rating = 5 where name = 'Pizza Hut'; -- changing data
commit; --setting the transaction

--Session2;
select * from pizzeria where name  = 'Pizza Hut';