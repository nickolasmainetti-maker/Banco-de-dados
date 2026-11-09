

CREATE DATABASE financas_pessoais;


USE financas_pessoais;


CREATE TABLE transacoes (
	id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_transacao DATE NOT NULL
);


INSERT INTO transacoes (descricao, valor, data_transacao) VALUES
('Salário Mensal', 3500.00, '2026-11-05'),
('Supermercado', -250.50, '2026-11-08'),
('Aprovação de estrutura', 1200.00, '2026-11-10'),
('Restaurante', -95.00, '2026-11-14'),
('Conta de Luz', -185.40, '2026-11-10');


UPDATE transacoes SET valor = 1300.00 WHERE descricao = 'Aprovação de estrutura' AND data_transacao = '2026-11-10';


DELETE FROM transacoes WHERE descricao = 'Restaurante';


SELECT * FROM transacoes WHERE data_transacao = '2026-11-10';