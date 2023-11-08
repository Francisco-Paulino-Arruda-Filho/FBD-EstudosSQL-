CREATE TABLE Evento (
	                  cod_evento INTEGER,
	                  nome VARCHAR(30), 
	                  dataEvento DATE, 
	                  hora INTEGER, 
	                  valor INTEGER, 
	                  cod_local INTEGER, 
	                  cod_produtora INTEGER
                    );
ALTER TABLE Evento ADD CONSTRAINT pkEvento PRIMARY KEY(cod_evento);
ALTER TABLE Evento ADD CONSTRAINT ukEvento UNIQUE (nome);
ALTER TABLE Evento ADD CONSTRAINT fkEvento1 FOREIGN KEY (cod_local) 
REFERENCES localidade(cod_local);
ALTER TABLE Evento ADD CONSTRAINT fkEvento2 FOREIGN KEY (cod_produtora) 
REFERENCES Produtora(cod_produtora);