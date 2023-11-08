/*4)Para cada departamento, recupere o numero do depto e o valor do maior
salário do professor Adjunto I.*/
SELECT pf.cod_depto, MAX(pf.salario)
FROM professor pf
WHERE pf.categoria = 'Adjunto'
GROUP BY pf.cod_depto, pf.salario
ORDER BY pf.salario