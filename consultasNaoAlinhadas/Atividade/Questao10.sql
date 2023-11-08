/*
10 – Selecione entre todos os cursos, o nome e o nome do curso dos 5 alunos com melhor
desempenho de notas de prova.
*/
SELECT p.nome, c.nome
FROM pessoa p
JOIN aluno a ON a.matricula_aluno = p.matricula_pessoa
JOIN curso c ON c.codigo_curso = a.codigo_curso
JOIN aluno_turma at ON at.matricula_aluno = a.matricula_aluno
JOIN prova pr ON pr.matricula_aluno = at.matricula_aluno
GROUP BY a.matricula_aluno, pr.nota, p.nome, c.nome
ORDER BY(AVG(pr.nota)) DESC
LIMIT 5