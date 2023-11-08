CREATE TABLE Habilidade( tipo VARCHAR(30),
						 nome VARCHAR(30)
                       );
ALTER TABLE Habilidade ADD CONSTRAINT pkHabilidade 
PRIMARY KEY (nome);
SELECT * FROM Habilidade;