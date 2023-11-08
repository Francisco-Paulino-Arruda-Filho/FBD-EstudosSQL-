/*2 – Exiba para cada aluno, o seu nome e a quantidade de disciplinas 
já matriculadas.*/
SELECT p.nome, COUNT(d.codigo_disciplina)
FROM pessoa p
JOIN aluno a ON a.matricula_aluno = p.matricula_pessoa
JOIN aluno_turma at ON a.matricula_aluno = at.matricula_aluno
JOIN turma t ON t.codigo_disciplina = at.codigo_disciplina
JOIN disciplina d ON d.codigo_disciplina = t.codigo_disciplina
GROUP BY p.nome, d.codigo_disciplina