-- comandos para criar database(banco de dados)
CREATE DATABASE senai;

-- comandos para criar tabela
CREATE TABLE Alunos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255)
);

-- alterar nome da tabela
ALTER TABLE alunos
CHANGE nnome_pessoal VARCHAR(255);

-- mudar nome de tabela
RENAME TABLE aluno TO alunos;

-- adicionando campo após tabela criada
ALTER TABLE alunos
ADD descrição VARCHAR(255);

-- Atualização de Multiplos registros
UPDATE Clientes
SET Nome = 'Cliente VIP'
WHERE Idade > 30;

--comando para inserir dados em uma tabela
INSERT INTO alunos (nome, email)
VALUES ('joao','j@gmail.com');

-- deletar usuario
DELETE FROM Alunos WHERE id = 1;

            --selecionar colunas especificas
SELECT nome, email FROM alunos; --seleciona nome e email dos alunos
SELECT nome, email FROM alunos WHERE idade > 30; --seleciona pessoas com mais de 30 anos
SELECT nome, email FROM alunos WHERE email = 'rg@gmail.com'; --selecionar um usuario especifico

SELECT * FROM alunos WHERE nome = 'nome' AND senha = '1234'
SELECT * FROM alunos WHERE nome = 'nome' OR senha = '1234'