CREATE DATABASE mercado_virtual;

USE mercado_virtual;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    tipo VARCHAR(50) NOT NULL
);

INSERT INTO produtos (nome, preco, tipo) VALUES 
('Arroz', 19.99, 'Alimento'),
('Feijão', 7.99, 'Alimento'),
('Bombom', 3.99, 'Doce'),
('Maça do amor', 6.99, 'Doce'),
('Biscoito', 4.50, 'Massa'),
('Macarrão', 5.99, 'Massa'),
('Leite', 4.49, 'Bebida'),
('Café', 30.90, 'Bebida');

-- Consulta para exibir os produtos alimentícios com seus preços e tipos
SELECT * FROM produtos;
