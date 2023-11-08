INSERT INTO Evento (cod_evento, nome, dataEvento, hora, valor, cod_local, cod_produtora)
VALUES
    (1, 'Evento 10', '2023-09-10', 1810, 54, 1, 1),
SELECT * FROM Evento;
/*ERROR:  syntax error at or near "SELECT"
LINE 4: SELECT * FROM Evento;
        ^ 

SQL state: 42601
Character: 149
Já existe um evento com cod_evento = 1
*/