/*
1)Recupere a média de salário dos professores que são Adjunto 1.
*/
SELECT ROUND(AVG(pf.salario), 2)
FROM professor pf
WHERE pf.categoria = 'Adjunto'
