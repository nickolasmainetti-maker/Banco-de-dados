SELECT categoria, AVG(preco) AS media_preco
FROM produtos
GROUP BY categoria;

SELECT categoria,
       MIN(preco) AS menor_preco,
       MAX(preco) AS maior_preco
FROM produtos
GROUP BY categoria;

ALTER TABLE produtos ADD COLUMN CATEGORIA VARCHAR(50);
SELECT categoria, COUNT(*) AS total
FROM produtos
GROUP BY categoria
HAVING COUNT(*) > 2;