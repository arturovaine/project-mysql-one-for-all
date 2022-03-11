SELECT artista, album, COUNT(usuario_id) AS seguidores
FROM SpotifyClone.artistas
LEFT JOIN SpotifyClone.albums ON SpotifyClone.artistas.artista_id = SpotifyClone.albums.artista_id
LEFT JOIN SpotifyClone.seguidores ON SpotifyClone.seguidores.seguindo_artista_id = SpotifyClone.artistas.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;

