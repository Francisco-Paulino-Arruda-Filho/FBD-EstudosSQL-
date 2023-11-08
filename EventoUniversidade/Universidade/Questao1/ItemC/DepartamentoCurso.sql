CREATE TABLE departamento(
    nome VARCHAR(30) UNIQUE,
    codigo SERIAL PRIMARY KEY,
    num_escritorio INTEGER,
    telefone CHAR(11),
    faculdade VARCHAR(30) NOT NULL
);

INSERT INTO departamento(nome, num_escritorio, telefone, faculdade)
VALUES('Engenharia de Software', 1, '8899994444', 'UFC Quixadá'),
      ('Computação', 1, '8899994444', 'UFC Quixadá');

SELECT * FROM departamento;

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

INSERT INTO curso VALUES
(1, 'FBD', 'Fundamentos de Bancos de Dados', 64, '1');

SELECT * FROM curso;
