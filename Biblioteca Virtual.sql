-- Criar o banco de dados
CREATE DATABASE literatura_brasileira;

-- Selecionar o banco de dados
USE literatura_brasileira;

-- Criar a tabela de autores
CREATE TABLE autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL
);

-- Criar a tabela de livros
CREATE TABLE livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    ano_publicacao INT NOT NULL,
    autor_id INT
);

-- Inserir dados dos autores
INSERT INTO autores (nome, genero) VALUES 
('Machado de Assis', 'Romance'),
('Clarice Lispector', 'Romance'),
('Carlos Drummond de Andrade', 'Poesia'),
('Chico Buarque', 'Música/Literatura'),
('Monteiro Lobato', 'Infantil');

-- Inserir dados dos livros
INSERT INTO livros (titulo, ano_publicacao, autor_id) VALUES 
('Dom Casmurro', 1899, 1),
('A Hora da Estrela', 1977, 2),
('Alguma Poesia', 1930, 3),
('Budapeste', 2003, 4),
('O Sítio do Picapau Amarelo', 1920, 5);

-- Consulta para exibir os autores e seus livros
SELECT a.nome AS autor, a.genero, l.titulo AS livro, l.ano_publicacao
FROM autores a
JOIN livros l ON a.id = l.autor_id;
