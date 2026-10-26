CREATE DATABASE biblioteca; 
USE biblioteca; 

CREATE TABLE clientes ( 
    id_clientes INT AUTO_INCREMENT PRIMARY KEY, 
    nome_clientes VARCHAR(100), 
    email VARCHAR(100), 
    telefone VARCHAR(100)
);

CREATE TABLE livro ( 
    id_livro INT AUTO_INCREMENT PRIMARY KEY, 
    autor DATE, 
    nome VARCHAR(100), 
    genero VARCHAR(100) 
); 

CREATE TABLE biblioteca (
    id_biblioteca INT AUTO_INCREMENT PRIMARY KEY, 
    catalogo VARCHAR(100), 
    data DATE, 
    FOREIGN KEY (id_clientes) REFERENCES clientes(id_clientes),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);
