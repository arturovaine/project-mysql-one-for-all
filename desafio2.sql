SELECT cancoes, artistas, albuns FROM
	(SELECT COUNT(cancao) AS cancoes FROM SpotifyClone.cancoes) AS cancoes,
	(SELECT COUNT(artista) AS artistas FROM SpotifyClone.artistas) AS artistas,
	(SELECT COUNT(album) AS albuns FROM SpotifyClone.albums) AS albuns;
-- Ref.: https://stackoverflow.com/questions/43300665/sql-how-to-combine-count-results-from-multiple-tables-into-multiple-columns