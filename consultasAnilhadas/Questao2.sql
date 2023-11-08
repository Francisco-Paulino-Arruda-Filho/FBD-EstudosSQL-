/*
2 – Exiba para cada aluno, o seu nome e a quantidade de 
disciplinas já matriculadas.
*/
SELECT p.nome, (
    SELECT COUNT(d.codigo_disciplina) AS total
    FROM aluno a
    JOIN aluno_turma at ON at.matricula_aluno = a.matricula_aluno
    JOIN turma t ON t.codigo_disciplina = at.codigo_disciplina
    JOIN disciplina d ON d.codigo_disciplina = t.codigo_disciplina
    WHERE a.matricula_aluno = p.matricula_pessoa
	ORDER BY(total) DESC
) AS quantidade_disciplinas
FROM pessoa p;
