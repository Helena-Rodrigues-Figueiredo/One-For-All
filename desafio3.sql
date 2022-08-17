SELECT usu.nome AS usuario, COUNT(his.usuario_id) AS qt_de_musicas_ouvidas, ROUND(SUM((mus.duracao)/60), 2) AS total_minutos
FROM SpotifyClone.usuario AS usu
JOIN SpotifyClone.historico AS his ON his.usuario_id = usu.usuario_id
JOIN SpotifyClone.musica AS mus ON his.musica_id = mus.musica_id
GROUP BY his.usuario_id
ORDER BY usu.nome;