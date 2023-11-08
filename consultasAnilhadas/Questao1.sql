/*1 – Exiba para cada professor, o seu nome e a quantidade 
de turmas ministradas em cada período.*/
SELECT
    p.nome AS nome_professor,
    t.ano_semestre,
    (
        SELECT COUNT(*)
        FROM ministra m
        WHERE m.matricula_professor = pr.matricula_professor
        AND m.ano_semestre = t.ano_semestre
    ) AS quantidade_turmas_ministradas
FROM pessoa p
JOIN professor pr ON pr.matricula_professor = p.matricula_pessoa
JOIN disciplina d ON d.matricula_professor = pr.matricula_professor
JOIN turma t ON t.codigo_disciplina = d.codigo_disciplina
ORDER BY t.ano_semestre, p.nome;