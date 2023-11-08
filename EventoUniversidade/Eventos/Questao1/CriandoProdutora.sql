CREATE TABLE Produtora (
	                     cod_produtora INTEGER, 
	                     nome VARCHAR(30), 
	                     telefone CHAR(11), 
	                     logradouro VARCHAR(30), 
	                     bairro VARCHAR(30),
	                     numero INTEGER, 
	                     cidade VARCHAR(30), 
	                     CEP CHAR(8)
	                   );
ALTER TABLE Produtora ADD CONSTRAINT pkProdutora PRIMARY KEY (cod_produtora);
ALTER TABLE Produtora ADD CONSTRAINT fkProdutora FOREIGN KEY (CEP)
REFERENCES localidade(CEP);
SELECT * FROM Produtora;