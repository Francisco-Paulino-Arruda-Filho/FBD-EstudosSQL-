SELECT musica.titulo, gravadora.nome
FROM Musica musica, Gravadora gravadora
WHERE musica.id_gravadora = gravadora.id_gravadora;