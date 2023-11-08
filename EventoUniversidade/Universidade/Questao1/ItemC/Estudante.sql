--Departamento e curso  já foram feitas
CREATE TABLE Estudante(	numero INTEGER PRIMARY KEY,
					   	pnome VARCHAR(20),
					   	sobrenome VARCHAR(30),
					   	cidade VARCHAR(30),
					   	CEP INTEGER,
					    estado CHAR(2),
					   	numTelefone CHAR(11),
					   	dataNascimento DATE,
					   	sexo VARCHAR(20),
					   	classe VARCHAR(30),
					   	programaGraducao VARCHAR(30),
					   	numeroSeguro INTEGER UNIQUE
                      );
SELECT * FROM Estudante;