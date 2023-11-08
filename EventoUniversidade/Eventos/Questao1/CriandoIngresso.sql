CREATE TABLE Ingresso(
	                   cod_evento INTEGER, 
	                   nome VARCHAR(30), 
	                   CPF CHAR(11)
                     );
ALTER TABLE Ingresso ADD CONSTRAINT fkIngresso FOREIGN KEY (cod_evento)
REFERENCES Evento(cod_evento);