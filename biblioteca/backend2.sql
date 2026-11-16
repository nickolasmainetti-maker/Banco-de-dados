CREATE TABLE movimentacoes (
	id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT NOT NULL,
    tipo ENUM('entrada','saida') NOT NULL,
    quantidade INT NOT NULL,
    observacao VARCHAR(255) DEFAULT'',
    data_movimentacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (produto_id) REFERENCES produtos(id) ON DELETE CASCADE
);