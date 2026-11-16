INSERT INTO clientes (nome, email, cidade, estado, telefone)
VALUES
('Igor', 'igoralex@email.com', 'São Paulo', 'SP', '11988887777'),
('João Gabriel', 'joaoGabrielnovo@email.com', 'Campinas', 'SP', '19999996666');

INSERT INTO produtos (nome, preco, estoque)
VALUES
('Luffy estatua', 450.00, 10),
('soul eater', 12.00, 50);

UPDATE produtos
SET preco = preco * 1.10
WHERE nome LIKE '%Luffy%';

SET SQL_SAFE_UPDATES = 0;

DELETE FROM clientes
WHERE cidade = 'Rio de janeiro';
