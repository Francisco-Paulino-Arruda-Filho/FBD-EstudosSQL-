/*7 - Exiba o nome dos alunos do curso de ‘Computacao’ 
que nunca fizeram a disciplina ‘E1’. USE O OPERADOR EXCEPT.
JOIN aluno a ON a.matricula_aluno = p.matricula_Aluno
*/
SELECT p.nome
FROM pessoa p
JOIN aluno a ON a.matricula_aluno = p.matricula_pessoa
JOIN curso c ON c.codigo_curso = a.codigo_curso
WHERE c.nome = 'Computacao'
EXCEPT
SELECT p.nome
FROM pessoa p
JOIN aluno a ON a.matricula_aluno = p.matricula_pessoa
JOIN aluno_turma at ON at.matricula_aluno = a.matricula_aluno
JOIN turma t ON t.ano_semestre = at.ano_semestre
JOIN disciplina d ON t.codigo_disciplina = d.codigo_disciplina
WHERE d.ementa = 'E1';