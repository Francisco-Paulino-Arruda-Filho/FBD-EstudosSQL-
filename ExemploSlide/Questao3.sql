/*3)Recupere o nome dos professores juntamente com o nome das
disciplinas que eles ministraram em 2013.2.*/
SELECT pf.nome, d.nome
FROM professor pf
JOIN ministra m ON m.siape = pf.siape
JOIN disciplina d ON d.cod_disciplina = m.cod_disciplina
WHERE m.periodo  = '2013.2'