CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE clientes (   
id_cliente INT AUTO_INCREMENT PRIMARY KEY,   
nome VARCHAR(100) NOT NULL,   
email VARCHAR(100) UNIQUE,   
cidade VARCHAR(50),   
estado CHAR(2),   
telefone VARCHAR(20)
);

CREATE TABLE produtos (   
id_produto INT AUTO_INCREMENT PRIMARY KEY,   
nome VARCHAR(100) NOT NULL,   
preco DECIMAL(10,2) NOT NULL,   
estoque INT DEFAULT 0
);

CREATE TABLE pedidos (   
id_pedido INT AUTO_INCREMENT PRIMARY KEY,   
id_cliente INT,   
data_pedido DATE,   
valor_total DECIMAL(10,2),   
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE itens_pedido (   
id_item INT AUTO_INCREMENT PRIMARY KEY,   
id_pedido INT,   
id_produto INT,   
quantidade INT,   
subtotal DECIMAL(10,2),   
FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),   
FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);