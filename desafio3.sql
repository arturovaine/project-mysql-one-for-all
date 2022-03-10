SELECT usuario, COUNT(reproducoes.cancao_id) AS qtde_musicas_ouvidas, ROUND(SUM(duracao_segundos)/60,2) AS total_minutos
FROM SpotifyClone.usuarios AS usuarios
INNER JOIN reproducoes ON SpotifyClone.usuarios.usuario_id = SpotifyClone.reproducoes.usuario_id
INNER JOIN cancoes ON SpotifyClone.cancoes.cancao_id = SpotifyClone.reproducoes.cancao_id
GROUP BY usuario
ORDER BY usuario;
