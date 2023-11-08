-- Sample data for departamento table
INSERT INTO departamento (nome, num_escritorio, telefone, faculdade)
VALUES
    ('Department 1', 101, '12345678901', 'Faculty A'),
    ('Department 2', 102, '23456789012', 'Faculty B'),
    ('Department 3', 103, '34567890123', 'Faculty A'),
    ('Department 4', 104, '45678901234', 'Faculty C'),
    ('Department 5', 105, '56789012345', 'Faculty B'),
    ('Department 6', 106, '67890123456', 'Faculty A'),
    ('Department 7', 107, '78901234567', 'Faculty D'),
    ('Department 8', 108, '89012345678', 'Faculty B'),
    ('Department 9', 109, '90123456789', 'Faculty C'),
    ('Department 10', 110, '01234567890', 'Faculty D');

-- Sample data for curso table
INSERT INTO curso (numero, nome, descricao, horas, nivel, dep_oferta)
VALUES
    (1, 'Course A', 'Description for Course A', 60, 'B', 1),
    (2, 'Course B', 'Description for Course B', 45, 'A', 2),
    (3, 'Course C', 'Description for Course C', 90, 'C', 1),
    (4, 'Course D', 'Description for Course D', 75, 'B', 3),
    (5, 'Course E', 'Description for Course E', 30, 'A', 2),
    (6, 'Course F', 'Description for Course F', 60, 'B', 4),
    (7, 'Course G', 'Description for Course G', 45, 'A', 1),
    (8, 'Course H', 'Description for Course H', 90, 'C', 2),
    (9, 'Course I', 'Description for Course I', 75, 'B', 3),
    (10, 'Course J', 'Description for Course J', 30, 'A', 4);

-- Sample data for Estudante table
INSERT INTO Estudante (numero, pnome, sobrenome, cidade, CEP, estado, numTelefone, dataNascimento, sexo, classe, programaGraducao, numeroSeguro)
VALUES
    (1, 'John', 'Doe', 'City A', 12345, 'CA', '12345678901', '1990-01-15', 'Male', 'Class 1', 'Program A', 1001),
    (2, 'Jane', 'Smith', 'City B', 23456, 'NY', '23456789012', '1992-05-20', 'Female', 'Class 2', 'Program B', 1002),
    (3, 'David', 'Johnson', 'City C', 34567, 'TX', '34567890123', '1991-11-10', 'Male', 'Class 3', 'Program A', 1003),
    (4, 'Emily', 'Brown', 'City D', 45678, 'CA', '45678901234', '1993-03-25', 'Female', 'Class 1', 'Program C', 1004),
    (5, 'Michael', 'Wilson', 'City E', 56789, 'NY', '56789012345', '1994-09-05', 'Male', 'Class 2', 'Program B', 1005),
    (6, 'Sophia', 'Lee', 'City F', 67890, 'TX', '67890123456', '1992-07-30', 'Female', 'Class 3', 'Program C', 1006),
    (7, 'Daniel', 'Martinez', 'City G', 78901, 'CA', '78901234567', '1990-02-18', 'Male', 'Class 1', 'Program A', 1007),
    (8, 'Olivia', 'Garcia', 'City H', 89012, 'NY', '89012345678', '1993-08-12', 'Female', 'Class 2', 'Program B', 1008),
    (9, 'Ethan', 'Rodriguez', 'City I', 90123, 'TX', '90123456789', '1995-04-03', 'Male', 'Class 3', 'Program C', 1009),
    (10, 'Ava', 'Hernandez', 'City J', 10234, 'CA', '01234567890', '1991-12-22', 'Female', 'Class 1', 'Program D', 1010);

-- Sample data for Estudante_telefone table
INSERT INTO Estudante_telefone (telefone, numero)
VALUES
    ('12345678901', 1),
    ('23456789012', 2),
    ('34567890123', 3),
    ('45678901234', 4),
    ('56789012345', 5),
    ('67890123456', 6),
    ('78901234567', 7),
    ('89012345678', 8),
    ('90123456789', 9),
    ('01234567890', 10);

-- Sample data for Participa table
INSERT INTO Participa (nome_departamento, numero_aluno, prioridade)
VALUES
    ('Department 1', 1, 1),
    ('Department 2', 2, 2),
    ('Department 3', 3, 3),
    ('Department 4', 4, 4),
    ('Department 5', 5, 5),
    ('Department 6', 6, 6),
    ('Department 7', 7, 7),
    ('Department 8', 8, 8),
    ('Department 9', 9, 9),
    ('Department 10', 10, 10);

INSERT INTO secao (numeroSecao, numeroCurso, instrutor, semestre, ano)
VALUES
    (1, 1, 'Instructor 1', 1, 2023),
    (2, 2, 'Instructor 2', 2, 2023),
    (3, 3, 'Instructor 3', 1, 2023),
    (4, 4, 'Instructor 4', 2, 2023),
    (5, 5, 'Instructor 5', 1, 2023),
	(7, 7, 'Instructor 6', 2, 2023),
    (8, 8, 'Instructor 7', 1, 2023),
    (9, 9, 'Instructor 8', 2, 2023),
    (10, 10, 'Instructor 9', 1, 2023);
	
-- Sample data for relatorioNotas table (continued)
INSERT INTO relatorioNotas (numEstudante, numeroSecao, numeroCurso, notaNumerica)
VALUES
    (1, 7, 7, 88),
    (2, 8, 8, 92),
    (3, 9, 9, 78),
    (4, 10, 10, 85),
    (5, 7, 7, 90),
    (6, 8, 8, 86),
    (7, 9, 9, 79),
    (8, 10, 10, 91),
    (9, 7, 7, 84),
    (10, 8, 8, 89);