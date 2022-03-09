SELECT artistas.artista, albums.album
FROM SpotifyClone.artistas
INNER JOIN SpotifyClone.albums ON SpotifyClone.artistas.artista_id = SpotifyClone.albums.artista_id
WHERE artista = 'Walter Phoenix'
GROUP BY album
ORDER BY album ASC;
