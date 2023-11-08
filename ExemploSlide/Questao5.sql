/*
5)Retorne a quantidade de professores do departamento D001 que
ministram a disciplina IF973
*/
SELECT COUNT(pf.siape), pf.nome
FROM professor pf
JOIN departamento d ON d.numero_depto = pf.cod_depto
JOIN ministra m ON m.siape = pf.siape
JOIN disciplina dp ON dp.cod_disciplina = m.cod_disciplina
WHERE d.numero_depto = 101
GROUP BY pf.siape, dp.nome
HAVING dp.nome = 'Cálculo I'