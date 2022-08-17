SELECT art.nome AS artista, alb.nome AS album, COUNT(seg.artista_id) AS seguidores
FROM SpotifyClone.artista AS art
JOIN SpotifyClone.album AS alb ON alb.artista_id = art.artista_id
JOIN SpotifyClone.seguindo AS seg ON seg.artista_id = alb.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;