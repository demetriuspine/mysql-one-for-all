SELECT
	COUNT(c.ID_CANCAO) AS cancoes,
	COUNT(DISTINCT a.ID_ARTISTA) AS artistas,
	COUNT(DISTINCT a.ID_ALBUM) AS albuns
FROM SpotifyClone.albuns AS a
INNER JOIN SpotifyClone.cancoes AS c
ON a.ID_ALBUM = c.ID_ALBUM;