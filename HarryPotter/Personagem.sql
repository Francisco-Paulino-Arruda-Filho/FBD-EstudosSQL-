CREATE TABLE Personagem( nome VARCHAR(30),
						 relacao_nome VARCHAR(30),
						 familiar_nome VARCHAR(30),
						 nome_familia VARCHAR(30),
						 nome_casa VARCHAR(30),
						 nome_habilidade VARCHAR(30)
                       );
ALTER TABLE Personagem ADD CONSTRAINT pkPersonagem 
PRIMARY KEY (nome);

ALTER TABLE Personagem ADD CONSTRAINT fkPersonagem1
FOREIGN KEY (familiar_nome) REFERENCES Personagem(nome);

ALTER TABLE Personagem ADD CONSTRAINT fkPersonagem2
FOREIGN KEY (nome_casa) REFERENCES Casa(nome);

ALTER TABLE Personagem ADD CONSTRAINT fkPersonagem3
FOREIGN KEY (nome_familia) REFERENCES Familia(nome);

ALTER TABLE Personagem ADD CONSTRAINT fkPersonagem4
FOREIGN KEY (nome_habilidade) REFERENCES Habilidade(nome);