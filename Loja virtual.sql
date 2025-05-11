CREATE DATABASE loja;

USE loja;

CREATE TABLE produto (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100),
    preco DECIMAL(10,2),
    categoria VARCHAR(50)
);

INSERT INTO produto (id_produto, nome_produto, preco, categoria) VALUES 
(1, 'Samsung S24', 3299.90, 'Eletronicos'),
(2, 'Fone de ouvido Bluetooth JBL', 250.00, 'Eletronicos'),
(3, 'Mouse sem fio', 75.90, 'Informatica'),
(4, 'Monitor gamer Samsung T350', 590.00, 'Informatica'),
(5, 'Livro: Petrus Logus', 50.00, 'Livros'),
(6, 'Livro: Harry Potter', 45.00, 'Livros'),
(7, 'Escrivaninha para quarto', 300.00, 'Moveis'),
(8, 'Cama de casal', 1000.00, 'Moveis'),
(9, 'Telefone fixo com fio', 30.00, 'Obsoleto'),
(10, 'Samsung J6', 1500.00, 'Obsoleto'),
(11, 'Walkman Sony', 120.00, 'Obsoleto'),
(12, 'Videocassete Philips', 200.00, 'Obsoleto');

SELECT * FROM produto;
SELECT COUNT(*) AS produtos_acima_de_100 FROM produto WHERE preco > 100; -- Conta os produtos com preco acima de 100
SELECT AVG(preco) AS media_preco FROM produto; -- Calcula a média de preços dos produtos
UPDATE produto -- Atualiza o preço do Mouse sem fio (caso precise alterar novamente)
SET preco = 70.90 
WHERE nome_produto = 'Mouse sem fio';

-- Remove produtos da categoria 'Obsoleto' (se quiser futuramente, agora estamos mantendo 4 produtos obsoletos)
DELETE FROM produto 
WHERE categoria = 'Obsoleto';
