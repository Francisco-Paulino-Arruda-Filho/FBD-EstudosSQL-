SELECT DISTINCT musica.titulo, gravadora.nome
FROM Musica musica
JOIN Gravadora gravadora ON musica.id_gravadora = gravadora.id_gravadora
JOIN Playlist_Musica playlist_musica ON playlist_musica.cod_musica = musica.cod_musica
JOIN Playlist playlist ON playlist.id_playlist = playlist_musica.id_playlist
JOIN Usuario usuario ON usuario.id_usuario = playlist.id_usu
WHERE usuario.nome = 'Bruno';