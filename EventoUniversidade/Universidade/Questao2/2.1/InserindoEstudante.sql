INSERT INTO Estudante(numero, pnome, sobrenome, cidade, CEP, estado, numTelefone, dataNascimento, sexo, classe, programaGraducao, numeroSeguro)
VALUES
    (1, 'João', 'Silva', 'Fortaleza', 60000000, 'CE', '8899991111', '2000-01-15', 'Masculino', 'Graduação', 'Engenharia de Software', 12345),
    (2, 'Maria', 'Santos', 'Quixadá', 63999999, 'CE', '8888882222', '2001-03-20', 'Feminino', 'Graduação', 'Computação', 54321),
    (3, 'Carlos', 'Ferreira', 'Fortaleza', 60000000, 'CE', '8877773333', '2002-05-10', 'Masculino', 'Graduação', 'Matemática', 67890);

SELECT * FROM Estudante;