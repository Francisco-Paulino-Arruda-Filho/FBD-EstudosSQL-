UPDATE Participa SET numero_aluno = 10 WHERE numero_aluno = 1;
/*ERROR:  Key (numero_aluno)=(10) is not present in table "estudante".insert or update on table "participa" violates foreign key constraint "participa_numero_aluno_fkey" 

ERROR:  insert or update on table "participa" violates foreign key constraint "participa_numero_aluno_fkey"
SQL state: 23503
Detail: Key (numero_aluno)=(10) is not present in table "estudante".
Não existe estudante com numero 10 na tabelas de estudantes
*/