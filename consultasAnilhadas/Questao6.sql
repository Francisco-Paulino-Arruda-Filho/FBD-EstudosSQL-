/*
6 – Exiba o nome de três professores que ministraram o maior número de disciplinas.
SELECT p.nome, COUNT(d.codigo_disciplina)
FROM pessoa p
JOIN professor pr ON p.matricula_pessoa = pr.matricula_professor
JOIN ministra m ON pr.matricula_professor = m.matricula_professor
JOIN turma t ON m.codigo_disciplina = t.codigo_disciplina
JOIN disciplina d ON t.codigo_disciplina = d.codigo_disciplina
GROUP BY p.nome, d.codigo_disciplina
ORDER BY COUNT(d.codigo_disciplina) DESC
LIMIT 3
*/
SELECT p.nome, 
  (SELECT COUNT(d.codigo_disciplina)
   FROM professor pr
   JOIN ministra m ON pr.matricula_professor = m.matricula_professor
   JOIN turma t ON m.codigo_disciplina = t.codigo_disciplina
   JOIN disciplina d ON t.codigo_disciplina = d.codigo_disciplina
   WHERE pr.matricula_professor = p.matricula_pessoa) AS total_disciplinas
FROM pessoa p
ORDER BY total_disciplinas DESC
LIMIT 3;