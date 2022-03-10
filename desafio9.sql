SELECT COUNT(SpotifyClone.reproducoes.usuario_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.reproducoes
LEFT JOIN SpotifyClone.usuarios ON SpotifyClone.usuarios.usuario_id = SpotifyClone.reproducoes.usuario_id
WHERE SpotifyClone.usuarios.usuario = 'Bill';
