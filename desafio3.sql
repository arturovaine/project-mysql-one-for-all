SELECT usuario, COUNT(reproducoes.cancao_id) AS qtde_musicas_ouvidas, SUM(duracao_segundos)/60 AS total_minutos
FROM SpotifyClone.usuarios AS usuarios
INNER JOIN reproducoes ON usuarios.usuario_id = reproducoes.usuario_id
INNER JOIN cancoes ON cancoes.cancao_id = reproducoes.cancao_id
GROUP BY usuario
ORDER BY usuario;
