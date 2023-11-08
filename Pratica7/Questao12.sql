SELECT DISTINCT artista.nome AS "Nome artista"
FROM Artista artista
JOIN Musica_Artista musica_artista ON artista.cod_autor = musica_artista.cod_artista
JOIN Musica musica ON musica_artista.cod_musica = musica.cod_musica
JOIN Playlist_Musica playlist_musica ON musica.cod_musica = playlist_musica.cod_musica
JOIN Playlist playlist ON playlist_musica.id_playlist = playlist.id_playlist
JOIN Usuario usuario ON playlist.id_usu = usuario.id_usuario
WHERE usuario.nome = 'Ana';