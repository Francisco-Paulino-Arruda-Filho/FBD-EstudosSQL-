DELETE FROM Estudante WHERE numero = 3;
/*ERROR:  Key (numero)=(3) is still referenced from table "participa".update or delete on table "estudante" violates foreign key constraint "participa_numero_aluno_fkey" on table "participa" 

ERROR:  update or delete on table "estudante" violates foreign key constraint "participa_numero_aluno_fkey" on table "participa"
SQL state: 23503
Detail: Key (numero)=(3) is still referenced from table "participa".
O estudante não pode ser deletado, pois ele está em outras relações
*/