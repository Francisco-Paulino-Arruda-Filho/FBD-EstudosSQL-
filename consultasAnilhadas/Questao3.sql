/*3 – Exiba o nome dos professores que não ministraram disciplinas em 2009.1.*/
/*SELECT p.nome
FROM pessoa p
JOIN professor pr ON p.matricula_pessoa = pr.matricula_professor
WHERE pr.matricula_professor NOT IN (
    SELECT DISTINCT pr.matricula_professor
    FROM ministra mi
    JOIN turma tr ON tr.codigo_disciplina = mi.codigo_disciplina
    WHERE tr.ano_semestre = '2009.1'
)
ORDER BY p.nome;*/
SELECT p.nome
FROM pessoa p
JOIN professor pr ON p.matricula_pessoa = pr.matricula_professor
WHERE (
		SELECT COUNT(DISTINCT mi.codigo_disciplina)
		FROM ministra mi
		JOIN turma tr ON tr.codigo_disciplina = mi.codigo_disciplina
		WHERE tr.ano_semestre = '2009.1'
      ) = 0
ORDER BY p.nome;