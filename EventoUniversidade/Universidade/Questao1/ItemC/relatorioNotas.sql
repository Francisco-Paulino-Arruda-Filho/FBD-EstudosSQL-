CREATE TABLE relatorioNotas( numEstudante INTEGER,
							 FOREIGN KEY (numEstudante) REFERENCES Estudante(numero) ON UPDATE CASCADE,
							 numeroSecao INTEGER,
							 numeroCurso INTEGER,
							 notaNumerica INTEGER
                           );
ALTER TABLE relatorioNotas ADD CONSTRAINT fk_relatorioNotas FOREIGN KEY (numeroSecao, numeroCurso) 
REFERENCES secao(numeroSecao, numeroCurso);