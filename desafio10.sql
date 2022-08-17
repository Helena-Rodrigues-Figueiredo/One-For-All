SELECT mus.nome AS nome, COUNT(his.musica_id) as reproducoes
FROM SpotifyClone.musica AS mus
JOIN SpotifyClone.historico AS his ON his.musica_id = mus.musica_id
JOIN SpotifyClone.usuario AS usu ON (usu.plano_id = 1 OR usu.plano_id = 2) AND usu.usuario_id = his.usuario_id
GROUP BY mus.nome
ORDER BY mus.nome;