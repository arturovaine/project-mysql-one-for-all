SELECT (SELECT ROUND(MIN(SpotifyClone.planos.valor_plano), 2)
			FROM SpotifyClone.planos
			LEFT JOIN SpotifyClone.usuarios
            ON SpotifyClone.usuarios.plano_id = SpotifyClone.planos.plano_id) AS faturamento_minimo,
		(SELECT ROUND(MAX(SpotifyClone.planos.valor_plano), 2)
			FROM SpotifyClone.planos
			LEFT JOIN SpotifyClone.usuarios
            ON SpotifyClone.usuarios.plano_id = SpotifyClone.planos.plano_id) AS faturamento_maximo,
		(SELECT ROUND(AVG(SpotifyClone.planos.valor_plano), 2)
			FROM SpotifyClone.planos
			LEFT JOIN SpotifyClone.usuarios
            ON SpotifyClone.usuarios.plano_id = SpotifyClone.planos.plano_id) AS faturamento_medio,
		(SELECT ROUND(SUM(SpotifyClone.planos.valor_plano), 2)
			FROM SpotifyClone.planos
			LEFT JOIN SpotifyClone.usuarios
            ON SpotifyClone.usuarios.plano_id = SpotifyClone.planos.plano_id) AS faturamento_total;
