CREATE TABLE Oferece( motorista VARCHAR(30),
					  passageiro VARCHAR(30),
					  idCarona INTEGER
                    );
ALTER TABLE Oferece ADD CONSTRAINT fkOferece1 FOREIGN KEY (motorista)
REFERENCES Pessoa(nome);
ALTER TABLE Oferece ADD CONSTRAINT fkOferece2 FOREIGN KEY (passageiro)
REFERENCES Pessoa(nome);
ALTER TABLE Oferece ADD CONSTRAINT pkOferece FOREIGN KEY (idCarona) 
REFERENCES Carona(idCarona);