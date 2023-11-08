CREATE TABLE Bruxo_das_trevas( nome VARCHAR(30)
                             );
ALTER TABLE Personagem ADD CONSTRAINT fkBruxo_das_trevas
FOREIGN KEY (nome) REFERENCES Personagem(nome);