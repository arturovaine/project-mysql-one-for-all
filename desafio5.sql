SELECT cancao, COUNT(reproducoes.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS cancoes
LEFT JOIN SpotifyClone.reproducoes ON SpotifyClone.reproducoes.cancao_id = SpotifyClone.cancoes.cancao_id
WHERE SpotifyClone.reproducoes.cancao_id = SpotifyClone.cancoes.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
