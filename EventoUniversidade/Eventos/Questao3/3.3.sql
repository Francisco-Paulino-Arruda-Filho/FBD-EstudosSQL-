DELETE FROM Evento
WHERE cod_evento = 2;
/*ERROR:  Key (cod_evento)=(2) is still referenced from table "ingresso".update or delete on table "evento" violates foreign key constraint "fkingresso" on table "ingresso" 

ERROR:  update or delete on table "evento" violates foreign key constraint "fkingresso" on table "ingresso"
SQL state: 23503
Detail: Key (cod_evento)=(2) is still referenced from table "ingresso".
Não pode seer deletado, pois está sendo refenciado na tabela ingressp
*/