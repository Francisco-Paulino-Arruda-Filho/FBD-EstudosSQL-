/*
2)Recupere a quantidade de disciplinas com carga horária de 60h.
*/
SELECT COUNT(d.cod_disciplina)
FROM disciplina d
WHERE d.carga_horaria = 60