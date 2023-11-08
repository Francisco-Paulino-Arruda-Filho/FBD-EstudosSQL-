-- Alteração do tipo de dado da coluna "periodo" para VARCHAR
-- Alteração do tipo de dado da coluna "periodo" para VARCHAR
ALTER TABLE Ministra
ALTER COLUMN periodo TYPE VARCHAR(10);
-- Inserção de valores na tabela Ministra com o formato de período
UPDATE Ministra SET periodo = '2013.2' WHERE siape = 10001 AND cod_disciplina = 201;
UPDATE Ministra SET periodo = '2020' WHERE siape = 10002 AND cod_disciplina = 202;
UPDATE Ministra SET periodo = '2018.2' WHERE siape = 10003 AND cod_disciplina = 203;
UPDATE Ministra SET periodo = '2019' WHERE siape = 10004 AND cod_disciplina = 204;
UPDATE Ministra SET periodo = '2021' WHERE siape = 10005 AND cod_disciplina = 205;
UPDATE Ministra SET periodo = '2017.2' WHERE siape = 10006 AND cod_disciplina = 206;
UPDATE Ministra SET periodo = '2016' WHERE siape = 10007 AND cod_disciplina = 207;
UPDATE Ministra SET periodo = '2014.1' WHERE siape = 10008 AND cod_disciplina = 208;
UPDATE Ministra SET periodo = '2015' WHERE siape = 10009 AND cod_disciplina = 209;
UPDATE Ministra SET periodo = '2019.2' WHERE siape = 10010 AND cod_disciplina = 210;
