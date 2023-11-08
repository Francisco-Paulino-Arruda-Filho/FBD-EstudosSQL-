/*
4 - Exiba o nome dos alunos que não fizeram a disciplina ‘E2’.
*/
SELECT DISTINCT p.nome
FROM pessoa p
JOIN aluno a ON p.matricula_pessoa = a.matricula_aluno
JOIN aluno_turma at ON a.matricula_aluno = at.matricula_aluno
JOIN turma t ON at.codigo_disciplina = t.codigo_disciplina
JOIN disciplina d ON t.codigo_disciplina = d.codigo_disciplina
WHERE d.ementa 	NOT IN 	( 
							SELECT ementa
							FROM disciplina
							WHERE ementa = 'E2'
						)