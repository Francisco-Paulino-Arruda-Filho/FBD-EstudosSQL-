/*
9 – Para cada aluno, exiba o nome, o curso, a nota mínima, a nota máxima e a 
média de notas das provas.
*/
SELECT
    p.nome AS nome_aluno,
	c.nome,
    (SELECT MIN(pr.nota) FROM prova pr WHERE pr.matricula_aluno = a.matricula_aluno) AS nota_minima,
    (SELECT MAX(pr.nota) FROM prova pr WHERE pr.matricula_aluno = a.matricula_aluno) AS nota_maxima,
    (SELECT AVG(pr.nota) FROM prova pr WHERE pr.matricula_aluno = a.matricula_aluno) AS media_notas
FROM pessoa p
JOIN aluno a ON p.matricula_pessoa = a.matricula_aluno
JOIN aluno_turma at ON a.matricula_aluno = at.matricula_aluno
JOIN curso c ON c.codigo_curso = a.codigo_curso