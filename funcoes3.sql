SELECT coluna1, função_agregação(coluna2) FROM tabela GROUP BY coluna1;

ALTER TABLE produtos ADD COLUMN CATEGORIA VARCHAR(50);


SELECT CATEGORIA , COUNT(*) AS total_produtos FROM produtos GROUP BY CATEGORIA;

SELECT categoria, AVG(preco) AS media_preco FROM produtos GROUP BY categoria;

