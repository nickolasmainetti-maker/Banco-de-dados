CREATE DATABASE sistema_vendas;
USE sistema_vendas;

CREATE TABLE Loja (
    id_loja INT AUTO_INCREMENT PRIMARY KEY,
    endereco INT, -- Mantido INT conforme o diagrama
    nome_loja VARCHAR(100),
    funcionarios_quantia INT
);

CREATE TABLE Produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    idLoja INT,
    estoque INT,
    preço INT,
    nome_produt VARCHAR(100),
    FOREIGN KEY (idLoja) REFERENCES Loja(id_loja)
);

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    cpf INT, -- Mantido INT conforme o diagrama
    email VARCHAR(100),
    nome_cliente VARCHAR(100)
);

CREATE TABLE Compra (
    id_cliente INT,
    id_produto INT,
    PRIMARY KEY (id_cliente, id_produto),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);
