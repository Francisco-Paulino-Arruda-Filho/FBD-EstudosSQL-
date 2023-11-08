DROP TABLE Participa;
CREATE TABLE Participa(	nome_departamento VARCHAR(30),
					   	FOREIGN KEY (nome_departamento) REFERENCES departamento(nome)  ON UPDATE CASCADE,
					   	numero_aluno INTEGER,
					   	FOREIGN KEY (numero_aluno) REFERENCES Estudante(numero) ON UPDATE CASCADE,
					   	prioridade INTEGER PRIMARY KEY
                      );
SELECT * FROM Participa;