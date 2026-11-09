SELECT nome, cidade, estado

FROM clientes

WHERE  estado = 'SP';

SELECT * FROM produtos;

SELECT DISTINCT cidade FROM clientes;

SELECT * FROM clientes LIMIT 2;

SELECT preco+10 FROM produtos;

SELECT preco-5 FROM produtos;

SELECT preco*1.1 FROM produtos;

SELECT preco/2 FROM produtos;

SELECT 10 % 3;

SELECT * FROM clientes WHERE cidade='São Paulo';

SELECT * FROM produtos WHERE preco <> 100;

SELECT * FROM clientes WHERE idade > 18;

SELECT * FROM produtos WHERE estoque < 10;

SELECT * FROM professores WHERE salario >= 200000;

SELECT * FROM alunos WHERE nota <= 7;

SELECT * FROM produtos WHERE nome='NOTEBOOK' AND preco > 4000;

SELECT * FROM clientes WHERE estado='SP' OR estado='RJ';

SELECT * FROM cidade WHERE NOT estado='SP';

SELECT * FROM cidade WHERE NOT estado='SP';

SELECT * FROM produtos WHERE preco BETWEEN 10 AND 100;

SELECT * FROM clientes WHERE estado IN ('SP','RJ','BH'); 

SELECT * FROM produtos WHERE nome LIKE 'M%';

SELECT * FROM clientes WHERE telefone IS NULL;











