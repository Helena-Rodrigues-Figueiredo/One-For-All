SELECT art.nome AS artista, alb.nome AS album
FROM SpotifyClone.artista AS art
JOIN SpotifyClone.album AS alb ON alb.artista_id = art.artista_id
HAVING art.nome LIKE 'Elis%'
ORDER BY album;