SELECT 
	NOME_CANCAO AS nome_musica,
    CASE
        WHEN NOME_CANCAO LIKE '%Streets' THEN REPLACE(NOME_CANCAO, 'Streets', 'Code Review') -- https://stackoverflow.com/questions/4216605/mysql-case-in-update-statement-with-replace
        WHEN NOME_CANCAO LIKE '%Her Own' THEN REPLACE(NOME_CANCAO, 'Her Own', 'Trybe')
        WHEN NOME_CANCAO LIKE '%Inner Fire' THEN REPLACE(NOME_CANCAO, 'Inner Fire', 'Project')
        WHEN NOME_CANCAO LIKE '%Silly' THEN REPLACE(NOME_CANCAO, 'Silly', 'Nice')
        WHEN NOME_CANCAO LIKE '%Circus' THEN REPLACE(NOME_CANCAO, 'Circus', 'Pull Request')
    END AS novo_nome
FROM SpotifyClone.cancoes
WHERE NOME_CANCAO LIKE '%Streets'
  OR NOME_CANCAO LIKE '%Her Own'
  OR NOME_CANCAO LIKE '%Inner Fire'
  OR NOME_CANCAO LIKE '%Silly'
  OR NOME_CANCAO LIKE '%Circus'
ORDER BY NOME_CANCAO;