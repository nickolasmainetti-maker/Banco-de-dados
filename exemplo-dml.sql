INSERT INTO clientes (nome, email, cidade, estado, telefone)
VALUES
('Maria Silva', 'maria@email.com', 'São Paulo', 'SP', '11988887777'),
('João Souza', 'joao@email.com', 'Campinas', 'SP', '19999996666'),
('Ana Costa', 'ana@email.com', 'Curitiba', 'PR', '41987654321'),
('Carlos Pereira', 'carlos@email.com', 'Rio de janeiro', 'RJ', '21955555678');

INSERT INTO produtos (nome, preco, estoque)
VALUES
('Notebook Dell', 4500.00, 10),
('Mouse gamer', 120.00, 50),
('Tablet', 300.00, 20),
('Mesa digital', 700.00, 40),
('Pro controller', 300.00, 60);

INSERT INTO pedidos (id_cliente, data_pedido, valor_total)
VALUES
(1, '2026-08-01', 4620.00),
(3, '2026-08-05', 1500.00);

-- ITENS DOS PEDIDOS
INSERT INTO itens_pedido (id_pedido, id_produto, quantidade,subtotal)
VALUES
(1, 1, 1, 4500.00),
(1, 2, 1, 120.00),
(2, 5, 1, 1300.00),
(2, 3, 1, 200.00);