SELECT *
FROM Musica musica
WHERE RIGHT(musica.titulo, 1) = 'A' AND LENGTH(musica.titulo) = 5;