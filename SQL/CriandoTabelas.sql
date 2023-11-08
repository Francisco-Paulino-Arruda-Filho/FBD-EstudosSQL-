CREATE TABLE departamento(
    nome VARCHAR(30) UNIQUE,
    codigo SERIAL PRIMARY KEY,
    num_escritorio INTEGER,
    telefone CHAR(11),
    faculdade VARCHAR(30) NOT NULL
);

CREATE TABLE curso(
    numero INTEGER,
    nome VARCHAR(50),
    descricao VARCHAR(200),
    horas INTEGER,
    nivel CHAR(1)
);

ALTER TABLE curso
ADD CONSTRAINT pkcurso PRIMARY KEY(numero);

ALTER TABLE curso
ADD CONSTRAINT ukcurso UNIQUE(nome);

ALTER TABLE curso
ADD COLUMN dep_oferta INTEGER;

ALTER TABLE curso
ADD CONSTRAINT fkcurso_dep FOREIGN KEY(dep_oferta) REFERENCES departamento(codigo);

CREATE TABLE Estudante(	numero INTEGER PRIMARY KEY,
					   	pnome VARCHAR(20),
					   	sobrenome VARCHAR(30),
					   	cidade VARCHAR(30),
					   	CEP INTEGER,
					    estado CHAR(2),
					   	numTelefone CHAR(11),
					   	dataNascimento DATE,
					   	sexo VARCHAR(20),
					   	classe VARCHAR(30),
					   	programaGraducao VARCHAR(30),
					   	numeroSeguro INTEGER UNIQUE
                      );
CREATE TABLE Estudante_telefone( telefone CHAR(11) PRIMARY KEY,
								   numero INTEGER,
								   FOREIGN KEY (numero) REFERENCES Estudante(numero)  ON UPDATE CASCADE
                               );
ALTER TABLE Estudante_telefone ADD CONSTRAINT fk_Estudante_telefone_Estudante
FOREIGN KEY (numero) REFERENCES Estudante(numero);


CREATE TABLE Participa(	nome_departamento VARCHAR(30),
					   	FOREIGN KEY (nome_departamento) REFERENCES departamento(nome)  ON UPDATE CASCADE,
					   	numero_aluno INTEGER,
					   	FOREIGN KEY (numero_aluno) REFERENCES Estudante(numero) ON UPDATE CASCADE,
					   	prioridade INTEGER PRIMARY KEY
                      );

CREATE TABLE secao(	numeroSecao INTEGER PRIMARY KEY,
				   	numeroCurso INTEGER,
				   	FOREIGN KEY (numeroCurso) REFERENCES curso(numero),
				   	instrutor VARCHAR(30),
				   	semestre INTEGER,
				   	ano INTEGER
                  );
ALTER TABLE secao
ADD CONSTRAINT uk_secao_numeroSecao_numeroCurso UNIQUE (numeroSecao, numeroCurso);

CREATE TABLE relatorioNotas( numEstudante INTEGER,
							 FOREIGN KEY (numEstudante) REFERENCES Estudante(numero) ON UPDATE CASCADE,
							 numeroSecao INTEGER,
							 numeroCurso INTEGER,
							 notaNumerica INTEGER
                           );
ALTER TABLE relatorioNotas ADD CONSTRAINT fk_relatorioNotas FOREIGN KEY (numeroSecao, numeroCurso) 
REFERENCES secao(numeroSecao, numeroCurso);