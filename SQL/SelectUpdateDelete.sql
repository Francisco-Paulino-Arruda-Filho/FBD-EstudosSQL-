--SELECT * FROM relatorioNotas;
--ALTER TABLE relatorioNotas RENAME COLUMN notasnumerica TO notaLetra;
/*UPDATE relatorioNotas SET notaLetra = 'B' WHERE numEstudante = 1;
UPDATE relatorioNotas SET notaLetra = 'A' WHERE numEstudante = 2;
UPDATE relatorioNotas SET notaLetra = 'C' WHERE numEstudante = 3;
UPDATE relatorioNotas SET notaLetra = 'B' WHERE numEstudante = 4;
UPDATE relatorioNotas SET notaLetra = 'A' WHERE numEstudante = 5;
UPDATE relatorioNotas SET notaLetra = 'B' WHERE numEstudante = 6;
UPDATE relatorioNotas SET notaLetra = 'C' WHERE numEstudante = 7;
UPDATE relatorioNotas SET notaLetra = 'A' WHERE numEstudante = 8;
UPDATE relatorioNotas SET notaLetra = 'B' WHERE numEstudante = 9;
UPDATE relatorioNotas SET notaLetra = 'B' WHERE numEstudante = 10;*/
--DELETE FROM relatorioNotas WHERE numEstudante IS NULL;
SELECT * FROM relatorioNotas WHERE notaNumerica >= 90;