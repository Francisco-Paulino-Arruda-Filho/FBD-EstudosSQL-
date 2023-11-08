/*
8 – Exiba o nome dos alunos do curso de ‘Sistemas de Infomacao’ que já fizeram disciplina com o
professor Jose Alcantara. USE O OPERADOR IN. 
*/
SELECT DISTINCT p.nome
FROM pessoa p
JOIN aluno a ON p.matricula_pessoa = a.matricula_aluno
JOIN aluno_turma at ON a.matricula_aluno = at.matricula_aluno
JOIN turma t ON at.codigo_disciplina = t.codigo_disciplina
JOIN disciplina d ON t.codigo_disciplina = d.codigo_disciplina
JOIN professor pr ON d.matricula_professor = pr.matricula_professor
JOIN curso c ON a.codigo_curso = c.codigo_curso
WHERE c.nome = 'Sistemas de Informacao'
  AND p.nome IN ('Jose Alcantara');