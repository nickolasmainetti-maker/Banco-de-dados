UPDATE produtos
SET preco = preco * 1.10
WHERE nome LIKE '%Gamer%';

SET SQL_SAFE_UPDATES = 0;

DELETE FROM clientes
WHERE cidade = 'Rio de janeiro';
