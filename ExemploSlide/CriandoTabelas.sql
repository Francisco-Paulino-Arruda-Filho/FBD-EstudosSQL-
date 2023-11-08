-- Criação da tabela Professor
CREATE TABLE Professor (
    siape INT PRIMARY KEY,
    nome VARCHAR(255),
    categoria VARCHAR(50),
    salario DECIMAL(10, 2),
    cod_depto INT
);

-- Criação da tabela Disciplina
CREATE TABLE Disciplina (
    cod_disciplina INT PRIMARY KEY,
    nome VARCHAR(255),
    carga_horaria INT
);

-- Criação da tabela Departamento
CREATE TABLE Departamento (
    numero_depto INT PRIMARY KEY,
    nome_depto VARCHAR(255)
);

-- Criação da tabela Ministra
CREATE TABLE Ministra (
    siape INT,
    cod_disciplina INT,
    periodo INT,
    FOREIGN KEY (siape) REFERENCES Professor (siape),
    FOREIGN KEY (cod_disciplina) REFERENCES Disciplina (cod_disciplina)
);
