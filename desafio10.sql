SELECT 
    c.NOME_CANCAO AS nome,
    COUNT(m.ID_CANCAO) AS reproducoes
FROM  SpotifyClone.musicas_reproduzidas AS m
INNER JOIN SpotifyClone.cancoes AS c
ON m.ID_CANCAO = c.ID_CANCAO
INNER JOIN SpotifyClone.usuarios AS u
ON m.ID_USUARIO = u.ID_USUARIO
INNER JOIN SpotifyClone.planos AS p
ON p.ID_PLANO = u.ID_PLANO
WHERE
  TIPO_PLANO = 'gratuito'
  OR TIPO_PLANO = 'pessoal'
GROUP BY NOME_CANCAO
ORDER BY NOME_CANCAO;