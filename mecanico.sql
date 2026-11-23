USE oficina_mecanica;

CREATE TABLE clientes (
id_clientes INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(150) NOT NULL,
telefone VARCHAR(100) NOT NULL,
cidade VARCHAR(100) NOT NULL,
data_cadastro DATE
);

CREATE TABLE servicos (
id_servicos INT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(100),
categoria VARCHAR(100),
preco DECIMAL(10,2)
);

CREATE TABLE veiculos (
id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
id_clientes INT,
FOREIGN KEY (id_clientes) REFERENCES clientes(id_clientes),
modelo VARCHAR(100),
placa VARCHAR(10),
ano INT
);

CREATE TABLE ordens_servico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_clientes INT,
    id_servicos INT,
    id_veiculo INT,
    data_os DATE,
    quantidade INT,
    FOREIGN KEY (id_clientes) REFERENCES clientes(id_clientes),
    FOREIGN KEY (id_servicos) REFERENCES servicos(id_servicos),
    FOREIGN KEY (id_veiculo) REFERENCES veiculos(id_veiculo)
);

USE oficina_mecanica;

INSERT INTO clientes (id_clientes, nome, telefone, cidade, data_cadastro)
VALUES
('1', 'Maka Albarn', '(11) 98765-4321', 'Death City', '2025-04-07'),
('2', 'Soul Eater Evans', '(11) 91234-5678', 'Death City', '2025-04-08'),
('3', 'Black Star', '19) 99887-6655', 'Star village', '2025-05-12'),
('4', 'Death the Kid', '(11) 98888-8888', 'Death City', '2025-08-08'),
('5', 'Franken Stein', '(16) 97766-5544', 'Laboratório Subterrâneo', '2025-01-15');

USE oficina_mecanica;

INSERT INTO servicos (id_servicos, descricao, categoria, preco) VALUES
(1, 'Black Blood Oil Change', 'Lubrication', 180.00),
(2, 'Symmetrical Wheel Alignment and Balancing', 'Suspension', 88.88),
(3, 'Scythe Blade Sharpening and Grinding', 'Bodywork', 350.00),
(4, 'Engine Soul Resonance Overhaul', 'General Mechanics', 420.50),
(5, 'High-Voltage Battery Charge (Paradise)', 'Electrical', 150.00);

INSERT INTO veiculos (id_veiculo, id_clientes, modelo, placa, ano) VALUES
(1, 1, 'Shibusen Academic Sedan', 'SHB-1001', 2022),
(2, 2, 'Red Soul Eater Cruiser Bike', 'SOL-2008', 2020),
(3, 3, 'Shadow Turbo Coupe', 'STR-9999', 2024),
(4, 4, 'Beelze Twin-Skull Hoverboard', 'KID-8888', 2023),
(5, 5, 'Mad Scientist Lab Van', 'STN-1970', 2018),
(6, 6, 'Lord death motor', 'LDE-1800', 2022);

USE oficina_mecanica;

INSERT INTO ordens_servico (id, id_clientes, id_servicos, id_veiculo, data_os, quantidade) VALUES
(1, 1, 3, 1, '2025-05-01', 1),
(2, 2, 1, 2, '2025-05-03', 2),
(3, 3, 4, 3, '2026-07-27', 1),
(4, 4, 2, 4, '2025-08-08', 2),
(5, 5, 5, 5, '2025-06-10', 3);

SELECT * FROM clientes WHERE cidade='Death City';

SELECT * FROM veiculos WHERE ano <> 2022;

SELECT * FROM veiculos WHERE modelo LIKE 'S%';

SELECT * FROM clientes WHERE NOT cidade='Death City';

SELECT * FROM clientes WHERE cidade = 'Death City' ORDER BY nome;

SELECT * FROM servicos WHERE preco BETWEEN 100 AND 1000;

SET SQL_SAFE_UPDATES = 0;

UPDATE veiculos
SET ano = 2022
WHERE modelo = 'Shadow Turbo Coupe';

DELETE FROM veiculos
WHERE modelo LIKE '%Lord%'; 

SELECT cidade, COUNT(*) AS total_clientes
FROM clientes
GROUP BY cidade;

SELECT id_clientes, SUM(quantidade) AS total_itens_pedidos
FROM ordens_servico
GROUP BY id_clientes;

SELECT categoria, AVG(preco) AS media_preco
FROM servicos
GROUP BY categoria;

SELECT id_clientes, COUNT(*) AS quantidade FROM ordens_servico GROUP BY id_clientes
HAVING COUNT(*) > 1;


