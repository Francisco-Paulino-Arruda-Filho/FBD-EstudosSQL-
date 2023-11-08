/*
7 – Exiba o nome dos alunos do curso de ‘Computacao’ que nunca fizeram 
a disciplina ‘E1’. USE O OPERADOR EXCEPT.
*/
SELECT p.nome
FROM pessoa p
JOIN aluno a ON p.matricula_pessoa = a.matricula_aluno
JOIN curso c ON a.codigo_curso = c.codigo_curso
WHERE c.nome = 'Computacao'
EXCEPT
SELECT DISTINCT p.nome
FROM pessoa p
JOIN aluno a ON p.matricula_pessoa = a.matricula_aluno
JOIN aluno_turma at ON a.matricula_aluno = at.matricula_aluno
JOIN turma t ON at.codigo_disciplina = t.codigo_disciplina
JOIN disciplina d ON t.codigo_disciplina = d.codigo_disciplina
WHERE d.ementa IN ( 
					SELECT ementa
					FROM disciplina
					WHERE ementa = 'E1'
				  )