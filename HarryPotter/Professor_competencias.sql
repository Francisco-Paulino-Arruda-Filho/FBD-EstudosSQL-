CREATE TABLE Professor_competencias( nome VARCHAR(30),
					    			 competencias TEXT
                      			   );
ALTER TABLE Professor_competencias ADD CONSTRAINT fkProfessor_competencias 
FOREIGN KEY (nome) REFERENCES Professor(nome);