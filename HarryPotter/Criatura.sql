CREATE TABLE Criatura( nome VARCHAR(30),
					   localidade VARCHAR(30) 
                     );
ALTER TABLE Criatura ADD CONSTRAINT fkCriatura FOREIGN KEY (localidade)
REFERENCES Criatura_local(localidade);
SELECT * FROM Criatura;