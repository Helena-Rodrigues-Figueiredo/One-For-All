SELECT DISTINCT(usu.nome) AS usuario, IF(MAX(YEAR(his.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuario AS usu
JOIN SpotifyClone.historico AS his ON his.usuario_id = usu.usuario_id
GROUP BY usu.nome
ORDER BY usu.nome;