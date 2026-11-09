USE ecommerce;


INSERT INTO clientes (nome, email, cidade, estado, telefone) VALUES
('Weverton pereira', 'wevertonpereira@email,com', 'Mococa', 'SP', '19989628910'),
('Everton Silva', 'everton@email,com', 'Cordesburgo', 'MG', '19995185370');


INSERT INTO produtos (nome, preco, estoque) VALUES
('Moto g 30', 2200.00, 5),
('soul eater', 670.00, 10);


UPDATE produtos SET estoque = 8 WHERE nome LIKE 'Moto g 30';


DELETE FROM clientes WHERE nome = 'Everton Silva';


SELECT * FROM clientes WHERE cidade = 'São Paulo' ORDER BY nome;
SELECT * FROM produtos WHERE preco BETWEEN 100 AND 1000;

