/*6 – Exiba o nome de três professores que ministraram o 
maior número de disciplinas*/
SELECT DISTINCT p.nome
FROM pessoa p
JOIN professor pr ON p.matricula_pessoa = pr.matricula_professor
JOIN ministra mi ON mi.matricula_professor = pr.matricula_professor
JOIN turma tr ON tr.codigo_disciplina = mi.codigo_disciplina 
JOIN disciplina d ON d.codigo_disciplina = tr.codigo_disciplina
GROUP BY p.nome, pr.matricula_professor, d.codigo_disciplina
ORDER BY COUNT(d.codigo_disciplina) DESC
LIMIT 3