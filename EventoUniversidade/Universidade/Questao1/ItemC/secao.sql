CREATE TABLE secao(	numeroSecao INTEGER PRIMARY KEY,
				   	numeroCurso INTEGER,
				   	FOREIGN KEY (numeroCurso) REFERENCES curso(numero),
				   	instrutor VARCHAR(30),
				   	semestre INTEGER,
				   	ano INTEGER
                  );
ALTER TABLE secao
ADD CONSTRAINT uk_secao_numeroSecao_numeroCurso UNIQUE (numeroSecao, numeroCurso);
SELECT * FROM secao;