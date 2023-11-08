/*4 - Exiba o nome dos alunos que não fizeram a disciplina ‘E2’.*/
SELECT DISTINCT p.nome
FROM pessoa p
JOIN aluno a ON p.matricula_pessoa = a.matricula_aluno
JOIN aluno_turma at ON a.matricula_aluno = at.matricula_aluno
LEFT JOIN turma t ON at.codigo_disciplina = t.codigo_disciplina
JOIN disciplina d ON d.codigo_disciplina = at.codigo_disciplina
  AND at.codigo_curso = t.codigo_curso
  AND at.ano_semestre = t.ano_semestre
WHERE d.ementa = 'E2' OR t.codigo_disciplina IS NULL;