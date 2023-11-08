/*1 – Exiba para cada professor, o seu nome e a quantidade de turmas ministradas 
em cada período.*/
SELECT
    p.nome,
    t.ano_semestre,
    COUNT(m.codigo_disciplina)
FROM pessoa p
JOIN professor pr ON pr.matricula_professor = p.matricula_pessoa
JOIN ministra m ON m.matricula_professor = pr.matricula_professor
JOIN disciplina d ON d.matricula_professor = pr.matricula_professor
JOIN turma t ON t.codigo_disciplina = d.codigo_disciplina
GROUP BY p.nome, t.ano_semestre
ORDER BY (t.ano_semestre);