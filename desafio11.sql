SELECT
    cancao AS nome_musica,
    CASE
        WHEN cancao LIKE '%Streets%' THEN REPLACE(SpotifyClone.cancoes.cancao, 'Streets', 'Code Review')
        WHEN cancao LIKE '%Her Own%' THEN REPLACE(SpotifyClone.cancoes.cancao, 'Her Own', 'Trybe')
        WHEN cancao LIKE '%Inner Fire%' THEN REPLACE(SpotifyClone.cancoes.cancao, 'Inner Fire', 'Project')
        WHEN cancao LIKE '%Silly%' THEN REPLACE(SpotifyClone.cancoes.cancao, 'Silly', 'Nice')
        WHEN cancao LIKE '%Circus%' THEN REPLACE(SpotifyClone.cancoes.cancao, 'Circus', 'Pull Request')
        ELSE cancao
    END AS 'novo_nome'
FROM SpotifyClone.cancoes;
