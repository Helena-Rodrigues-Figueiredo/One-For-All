SELECT COUNT(mus.nome) AS cancoes, COUNT(DISTINCT(art.nome)) AS artistas, COUNT(DISTINCT(alb.nome)) AS albuns
FROM SpotifyClone.musica AS mus
JOIN SpotifyClone.album AS alb ON alb.album_id = mus.album_id
JOIN SpotifyClone.artista AS art ON art.artista_id = alb.artista_id;
