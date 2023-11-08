-- Inserção de 10 tuplas na tabela Professor
INSERT INTO Professor (siape, nome, categoria, salario, cod_depto)
VALUES
    (10001, 'Carlos Sousa', 'Adjunto', 6000.00, 101),
    (10002, 'Ana Ferreira', 'Associado', 7000.00, 102),
    (10003, 'Rafael Santos', 'Assistente', 5500.00, 103),
    (10004, 'Lúcia Oliveira', 'Adjunto', 6200.00, 101),
    (10005, 'Paulo Rodrigues', 'Associado', 7200.00, 102),
    (10006, 'Mariana Silva', 'Assistente', 5700.00, 103),
    (10007, 'Tiago Mendes', 'Adjunto', 6100.00, 101),
    (10008, 'Beatriz Sá', 'Associado', 7300.00, 102),
    (10009, 'Eduardo Nunes', 'Assistente', 5400.00, 103),
    (10010, 'Isabela Ribeiro', 'Adjunto', 6300.00, 101);

-- Inserção de 10 tuplas na tabela Disciplina
INSERT INTO Disciplina (cod_disciplina, nome, carga_horaria)
VALUES
    (201, 'Cálculo I', 60),
    (202, 'Programação em Python', 90),
    (203, 'Literatura Brasileira', 45),
    (204, 'Física I', 60),
    (205, 'Banco de Dados', 90),
    (206, 'Filosofia', 45),
    (207, 'Álgebra Linear', 60),
    (208, 'Sistemas Operacionais', 90),
    (209, 'História da Arte', 45),
    (210, 'Estatística', 60);

-- Inserção de 10 tuplas na tabela Departamento
INSERT INTO Departamento (numero_depto, nome_depto)
VALUES
    (101, 'Departamento de Matemática'),
    (102, 'Departamento de Ciência da Computação'),
    (103, 'Departamento de Letras'),
    (104, 'Departamento de Física'),
    (105, 'Departamento de Informática'),
    (106, 'Departamento de Filosofia'),
    (107, 'Departamento de Física'),
    (108, 'Departamento de Informática'),
    (109, 'Departamento de Letras'),
    (110, 'Departamento de Matemática');

-- Inserção de 10 tuplas na tabela Ministra
INSERT INTO Ministra (siape, cod_disciplina, periodo)
VALUES
    (10001, 201, 1),
    (10002, 202, 2),
    (10003, 203, 1),
    (10004, 204, 2),
    (10005, 205, 1),
    (10006, 206, 2),
    (10007, 207, 1),
    (10008, 208, 2),
    (10009, 209, 1),
    (10010, 210, 2);
