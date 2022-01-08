SELECT
  u.NOME_USUARIO AS usuario,
  IF(MAX(YEAR(m.DATA_REPRODUCAO)) = 2021,'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM
  SpotifyClone.usuarios AS u,
  SpotifyClone.musicas_reproduzidas AS m
WHERE u.ID_USUARIO = m.ID_USUARIO
GROUP BY usuario
ORDER BY usuario;