/*9 – Para cada aluno, exiba o nome, o curso, a nota mínima, 
a nota máxima e a média de notas das provas.*/
SELECT ps.nome, MIN(prov.nota), MAX(prov.nota), AVG(prov.nota)
FROM pessoa ps
JOIN aluno al ON al.matricula_aluno = ps.matricula_pessoa
JOIN aluno_turma ta ON al.matricula_aluno = ta.matricula_aluno
JOIN prova prov ON prov.matricula_aluno = ta.matricula_aluno
GROUP BY ps.nome