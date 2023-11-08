/*
1- Encontre o número de empregados lotados no
departamento de Informática ;
*/
SELECT COUNT(pr.siape)
FROM professor pr
JOIN departamento d ON pr.cod_depto = d.numero_depto
WHERE d.nome_depto = 'Departamento de Letras'