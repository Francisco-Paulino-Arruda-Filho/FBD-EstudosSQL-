/*5 – Exiba o nome dOS professores que ministraram mais que 
duas disciplinas em 2009.2.*/
SELECT p.nome
FROM pessoa p
JOIN professor pr ON p.matricula_pessoa = pr.matricula_professor
JOIN ministra mi ON mi.matricula_professor = pr.matricula_professor
JOIN turma tr ON tr.codigo_disciplina = mi.codigo_disciplina 
JOIN disciplina d ON d.codigo_disciplina = tr.codigo_disciplina
WHERE tr.ano_semestre = '2009.2'
GROUP BY p.nome, pr.matricula_professor, d.codigo_disciplina
HAVING COUNT(d.codigo_disciplina) > 2
ORDER BY pr.matricula_professor, d.codigo_disciplina;