SELECT *
FROM Playlist playlist
JOIN Usuario usuario ON usuario.id_usuario = playlist.id_usu
WHERE usuario.nome = 'Ana'