DROP TABLE Estudante_telefone;
CREATE TABLE Estudante_telefone( telefone CHAR(11) PRIMARY KEY,
								   numero INTEGER,
								   FOREIGN KEY (numero) REFERENCES Estudante(numero)  ON UPDATE CASCADE
                               );
ALTER TABLE Estudante_telefone ADD CONSTRAINT fk_Estudante_telefone_Estudante 
FOREIGN KEY (numero) REFERENCES Estudante(numero);
SELECT * FROM Estudante_telefone;