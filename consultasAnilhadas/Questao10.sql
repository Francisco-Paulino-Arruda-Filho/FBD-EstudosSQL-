/*
10 – Selecione entre todos os cursos, o nome e o nome do curso dos 5 alunos 
com melhor desempenho de notas de prova
*/
/*SELECT p.nome AS nome_aluno, c.nome AS nome_curso, AVG(pr.nota) AS media_notas
FROM pessoa p
JOIN aluno a ON a.matricula_aluno = p.matricula_pessoa
JOIN curso c ON a.codigo_curso = c.codigo_curso
JOIN aluno_turma at ON a.matricula_aluno = at.matricula_aluno
JOIN prova pr ON at.matricula_aluno = pr.matricula_aluno
GROUP BY p.nome, pr.nota, a.matricula_aluno, c.nome
ORDER BY AVG(pr.nota) DESC
LIMIT 5*/
SELECT p.nome AS nome_aluno, c.nome AS nome_curso
FROM pessoa p
JOIN aluno a ON p.matricula_pessoa = a.matricula_aluno
JOIN curso c ON a.codigo_curso = c.codigo_curso
WHERE a.matricula_aluno IN (
  SELECT pr.matricula_aluno
  FROM prova pr
  GROUP BY pr.matricula_aluno
  ORDER BY AVG(pr.nota) DESC
  LIMIT 5
);

