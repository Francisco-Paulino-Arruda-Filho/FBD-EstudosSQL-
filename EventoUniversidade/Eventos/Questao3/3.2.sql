UPDATE Evento SET cod_produtora = 10 WHERE cod_produtora = 1;
/*ERROR:  Key (cod_produtora)=(10) is not present in table "produtora".insert or update on table "evento" violates foreign key constraint "fkevento2" 

ERROR:  insert or update on table "evento" violates foreign key constraint "fkevento2"
SQL state: 23503
Detail: Key (cod_produtora)=(10) is not present in table "produtora".
Não existe produtora com cod_produtora = 10
*/