/*
5 – Exiba o nome dOS professores que ministraram mais que 
duas disciplinas em 2009.2.
*/
SELECT p.nome
FROM pessoa p
JOIN professor pr ON p.matricula_pessoa = pr.matricula_professor
WHERE (
		SELECT COUNT(DISTINCT mi.codigo_disciplina)
		FROM ministra mi
		JOIN turma tr ON tr.codigo_disciplina = mi.codigo_disciplina
		WHERE tr.ano_semestre = '2009.2'
      ) > 2
ORDER BY p.nome;