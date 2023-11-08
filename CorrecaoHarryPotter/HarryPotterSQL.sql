CREATE TABLE Habilidade
(
  nome VARCHAR(30) NOT NULL,
  tipo VARCHAR(30) NOT NULL,
  PRIMARY KEY (nome)
);

CREATE TABLE criatura_local
(
  nome INT NOT NULL,
  PRIMARY KEY (nome)
);

CREATE TABLE Familia_valor
(
  valor INT NOT NULL,
  PRIMARY KEY (valor)
);

CREATE TABLE Familia_caracteristicas
(
  caracteristicsa VARCHAR NOT NULL,
  PRIMARY KEY (caracteristicsa)
);

CREATE TABLE casa_valor
(
  valor INT NOT NULL,
  PRIMARY KEY (valor)
);

CREATE TABLE casa_caracteristicas
(
  caracteristicas INT NOT NULL,
  PRIMARY KEY (caracteristicas)
);

CREATE TABLE professor_competencias
(
  competencias VARCHAR NOT NULL,
  PRIMARY KEY (competencias)
);

CREATE TABLE Criatura
(
  nome VARCHAR NOT NULL,
  nomeLocal INT NOT NULL,
  PRIMARY KEY (nome),
  FOREIGN KEY (nomeLocal) REFERENCES criatura_local(nome)
);

CREATE TABLE Familia
(
  nome VARCHAR NOT NULL,
  valor INT NOT NULL,
  caracteristicsa VARCHAR NOT NULL,
  PRIMARY KEY (nome),
  FOREIGN KEY (valor) REFERENCES Familia_valor(valor),
  FOREIGN KEY (caracteristicsa) REFERENCES Familia_caracteristicas(caracteristicsa)
);

CREATE TABLE Casa
(
  nome VARCHAR NOT NULL,
  valor INT NOT NULL,
  caracteristicas INT NOT NULL,
  PRIMARY KEY (nome),
  FOREIGN KEY (valor) REFERENCES casa_valor(valor),
  FOREIGN KEY (caracteristicas) REFERENCES casa_caracteristicas(caracteristicas)
);

CREATE TABLE Personagem
(
  nome VARCHAR(30) NOT NULL,
  nomeHabilidade VARCHAR(30) NOT NULL,
  nome_parente VARCHAR(30) NOT NULL,
  nome_familia VARCHAR NOT NULL,
  nome_casa VARCHAR NOT NULL,
  PRIMARY KEY (nome),
  FOREIGN KEY (nomeHabilidade) REFERENCES Habilidade(nome),
  FOREIGN KEY (nome_parente) REFERENCES Personagem(nome),
  FOREIGN KEY (nome_familia) REFERENCES Familia(nome),
  FOREIGN KEY (nome_casa) REFERENCES Casa(nome)
);

CREATE TABLE Professor
(
  nome VARCHAR(30) NOT NULL,
  competencias VARCHAR NOT NULL,
  FOREIGN KEY (nome) REFERENCES Personagem(nome),
  FOREIGN KEY (competencias) REFERENCES professor_competencias(competencias)
);

CREATE TABLE Aluno
(
  AnoEscola INT NOT NULL,
  nome VARCHAR(30) NOT NULL,
  FOREIGN KEY (nome) REFERENCES Personagem(nome)
);

CREATE TABLE Bruxo_das_trevas
(
  nome VARCHAR(30) NOT NULL,
  FOREIGN KEY (nome) REFERENCES Personagem(nome)
);

CREATE TABLE ensina_habilidade
(
  nome_habilidade VARCHAR(30) NOT NULL,
  nome_professor VARCHAR(30) NOT NULL,
  FOREIGN KEY (nome_habilidade) REFERENCES Habilidade(nome),
  FOREIGN KEY (nome_professor) REFERENCES Personagem(nome)
);

CREATE TABLE usa_habilidade
(
  nome_usuario VARCHAR(30) NOT NULL,
  nome_habilidade VARCHAR(30) NOT NULL,
  FOREIGN KEY (nome_usuario) REFERENCES Personagem(nome),
  FOREIGN KEY (nome_habilidade) REFERENCES Habilidade(nome)
);