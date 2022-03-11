SELECT cancao AS nome, COUNT(*) AS reproducoes
FROM SpotifyClone.cancoes
LEFT JOIN SpotifyClone.reproducoes ON SpotifyClone.reproducoes.cancao_id = SpotifyClone.cancoes.cancao_id
LEFT JOIN SpotifyClone.usuarios ON SpotifyClone.usuarios.usuario_id = SpotifyClone.reproducoes.usuario_id
WHERE (SpotifyClone.usuarios.plano_id = 1) OR (SpotifyClone.usuarios.plano_id = 3)
GROUP BY cancao
ORDER BY cancao;
