/*3 – Exiba o nome dos professores que não ministraram 
disciplinas em 2009.1.*/
SELECT p.nome
FROM pessoa p
JOIN professor pr ON p.matricula_pessoa = pr.matricula_professor
JOIN ministra mi ON mi.matricula_professor = pr.matricula_professor
JOIN turma tr ON tr.codigo_disciplina = mi.codigo_disciplina 
JOIN disciplina d ON d.codigo_disciplina = tr.codigo_disciplina
WHERE tr.ano_semestre = '2009.1'
GROUP BY p.nome, pr.matricula_professor, d.codigo_disciplina
HAVING COUNT(tr.codigo_disciplina) = 0
ORDER BY pr.matricula_professor, d.codigo_disciplina;