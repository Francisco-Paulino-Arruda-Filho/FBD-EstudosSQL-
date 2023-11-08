/*CREATE TABLE Localidade( nome VARCHAR(30),
						 geolocalizacao VARCHAR(30),
						 num INTEGER, 
						 rua VARCHAR(30),
						 cidade VARCHAR(30),
						 pont_ref VARCHAR(30)
                       );*/
ALTER TABLE Localidade ADD CONSTRAINT pkLocalidade PRIMARY KEY (nome);