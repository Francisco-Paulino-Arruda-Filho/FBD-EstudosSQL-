CREATE TABLE localidade (
	                      cod_local INTEGER, 
	                      nome_local INTEGER, 
	                      logradouro VARCHAR(30), 
	                      bairro VARCHAR(30), 
	                      numero INTEGER, 
	                      cidade VARCHAR(30), 
	                      CEP CHAR(8) 
                        );
ALTER TABLE localidade ADD CONSTRAINT ukLocalidade1 UNIQUE (nome_local);
ALTER TABLE localidade ADD CONSTRAINT ukLocalidade2 UNIQUE (CEP);
ALTER TABLE localidade ADD CONSTRAINT pkLocalidade PRIMARY KEY (cod_local);
SELECT * FROM localidade;
