SELECT MIN(pla.valor) AS faturamento_minimo, MAX(pla.valor) AS faturamento_maximo, ROUND(AVG(pla.valor), 2) AS faturamento_medio, ROUND(SUM(pla.valor), 2) AS faturamento_total
FROM SpotifyClone.plano AS pla
JOIN SpotifyClone.usuario AS usu ON usu.plano_id = pla.plano_id;