/*CREATE TABLE Pessoa( telefone CHAR(11),
					 nome VARCHAR(30),
					 num INTEGER,
					 rua VARCHAR(30),
					 cidade VARCHAR(30)
                   );
ALTER TABLE Pessoa ADD CONSTRAINT pkPessoa PRIMARY KEY (telefone);*/
ALTER TABLE Pessoa ADD CONSTRAINT ukPessoa UNIQUE (nome);