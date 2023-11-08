CREATE TABLE Aluno( anoEscolar INTEGER,
				    nome VARCHAR(30)
                  );
ALTER TABLE Aluno ADD CONSTRAINT fkAluno
FOREIGN KEY (nome) REFERENCES Personagem(nome);