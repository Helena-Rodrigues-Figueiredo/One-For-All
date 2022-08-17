SELECT mus.nome AS cancao, COUNT(his.data_reproducao) AS reproducoes 
FROM SpotifyClone.musica AS mus
JOIN SpotifyClone.historico AS his ON his.musica_id = mus.musica_id
GROUP BY his.musica_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;