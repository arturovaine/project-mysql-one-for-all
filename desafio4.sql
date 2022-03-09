SELECT usuario, 
CASE
    WHEN MAX(YEAR(historico_reproducoes_data)) > 2020 THEN 'Usuário ativo'
    WHEN MAX(YEAR(historico_reproducoes_data)) < 2021 THEN 'Usuário inativo'
    ELSE 'Usuário inativo'
END AS condicao_usuario
FROM SpotifyClone.usuarios
LEFT JOIN SpotifyClone.reproducoes ON SpotifyClone.usuarios.usuario_id = SpotifyClone.reproducoes.usuario_id
ORDER BY usuario;