/*CREATE TABLE Carona( dia DATE,
					 hora INTEGER,
					 num_vag INTEGER,
					 vag_disp INTEGER,
					 pont_part VARCHAR(30),
					 pont_cheg VARCHAR(30)
                   );
ALTER TABLE Carona ADD CONSTRAINT pkCarona PRIMARY KEY (dia, hora);*/
/*ALTER TABLE Carona ADD CONSTRAINT fkCarona1 FOREIGN KEY (pont_part)
REFERENCES Localidade(nome);
ALTER TABLE Carona ADD CONSTRAINT fkCarona2 FOREIGN KEY (pont_cheg)
REFERENCES Localidade(nome);*/
/*ALTER TABLE Carona ADD COLUMN idCarona Serial;
SELECT * FROM Carona;*/
ALTER TABLE Carona ADD CONSTRAINT pkCarona2 UNIQUE (idCarona);