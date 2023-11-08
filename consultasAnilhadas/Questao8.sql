/*
8 – Exiba o nome dos alunos do curso de ‘Sistemas de Infomacao’ 
que já fizeram disciplina com o professor Jose Alcantara. USE O OPERADOR IN. 
*/
SELECT DISTINCT p.nome
FROM pessoa p
JOIN aluno a ON p.matricula_pessoa = a.matricula_aluno
JOIN aluno_turma at ON a.matricula_aluno = at.matricula_aluno
JOIN turma t ON at.codigo_disciplina = t.codigo_disciplina
JOIN ministra m ON t.codigo_disciplina = m.codigo_disciplina
JOIN professor pf ON m.matricula_professor = pf.matricula_professor
WHERE pf.matricula_professor IN (
									SELECT matricula_professor
									FROM professor
								)