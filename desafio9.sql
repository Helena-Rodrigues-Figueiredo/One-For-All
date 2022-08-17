SELECT COUNT(*) AS quantidade_musicas_no_historico FROM SpotifyClone.historico AS his
JOIN SpotifyClone.usuario AS usu ON usu.usuario_id = 1 AND usu.usuario_id = his.usuario_id; 