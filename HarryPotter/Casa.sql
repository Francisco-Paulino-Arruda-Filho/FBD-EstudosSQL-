CREATE TABLE Casa( nome VARCHAR(30),
				   valor INTEGER,
				   caracteristicas TEXT
                 );
ALTER TABLE Casa ADD CONSTRAINT fkCasa FOREIGN KEY (valor)
REFERENCES Casa_valor(valor);
ALTER TABLE Casa ADD CONSTRAINT fkCasa2 FOREIGN KEY (caracteristicas)
REFERENCES Casa_caracteristicas(caracteristicas);
ALTER TABLE Casa ADD CONSTRAINT pkCasa PRIMARY KEY(nome);
SELECT * FROM Casa;