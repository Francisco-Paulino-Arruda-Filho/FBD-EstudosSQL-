-- Inserir novos artistas
INSERT INTO Artista (cod_autor, nome) VALUES
(1, 'Roberto Amado'),
(2, 'Jorge dos Reis'),
(3, 'Maria Queiroz'),
(4, 'José Lobato'),
(5, 'Ricardo do Amaral');


-- Inserir novas músicas com seus artistas
INSERT INTO Musica (cod_musica, titulo, id_gravadora) VALUES
(1, 'Som da meia-noite', 1),
(2, 'Melancolia sem fim', 2),
(3, 'Adeus, até logo', 2),
(4, 'Fim do mundo', 1),
(5, 'Rancho fundo', 2);

-- Mapear as músicas para os artistas
INSERT INTO Musica_Artista (cod_musica, cod_artista) VALUES
(1, 1), -- Música 1 é do Artista 1
(2, 2), -- Música 2 é do Artista 2
(3, 3), -- Música 3 é do Artista 3
(4, 4), -- Música 4 é do Artista 4
(5, 5); -- Música 5 é do Artista 5
