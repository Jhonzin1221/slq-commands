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
CHANGE nome_pessoal VARCHAR(255);

-- mudar nome de tabela
RENAME TABLE aluno TO alunos;

-- adicionando campo após tabela criada
ALTER TABLE alunos
ADD descrição VARCHAR(255);

-- Atualização de Multiplos registros
UPDATE Clientes
SET Nome = 'Cliente VIP'
WHERE Idade > 30;

-- Atualização de idade
UPDATE nome_tabela
SET idade = '00'
WHERE id = 00

--comando para inserir dados em uma tabela
INSERT INTO clientes (nome, email)
VALUES
('joao','j@gmail.com','joao9292'),
('maria','m@gmail.com','maria5323'),
('pedro','p@gmail.com','pedro9090'),
('ricardo','r@gmail.com','ricardo9076'),
('bruno','b@gmail.com','bruno7456'),
('cristian','c@gmail.com','cristian9482'),
('téo','t@gmail.com','téo2121');

-- deletar usuario
DELETE FROM Alunos WHERE id = 1;

            --selecionar colunas especificas
SELECT nome, email FROM alunos; --seleciona nome e email dos alunos
SELECT nome, email FROM alunos WHERE idade > 30; --seleciona pessoas com mais de 30 anos
SELECT nome, email FROM alunos WHERE email = 'rg@gmail.com'; --selecionar um usuario especifico

SELECT * FROM alunos WHERE nome = 'nome' AND senha = '1234'
SELECT * FROM alunos WHERE nome = 'nome' OR senha = '1234'

-- codigo utilizado para negar uma condição, retornando registros que não atendem a essa condição
SELECT * FROM usuarios WHERE NOT nome = "pedro";

-- codigos utilizados para ordenar do menor para o maior
SELECT nome FROM usuarios ORDER BY nome ASC;
SELECT nome FROM usuarios ORDER BY nome;

-- busca usuarios com idade entre 20 e 30 anos
SELECT * FROM nome_tabela WHERE idade = 20 AND 30;

-- relacionamento de tabelas

CREATE TABLE pedidos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_pedido VARCHAR(255) NOT NULL,
    id_cliente INT,
    FOREIGN KEY(id_cliente) REFERENCES clientes(id)
); 

-- fazer consulta dos usuarios
SELECT DISTINCT u.id, u.nome, u.email
FROM usuarios u
JOIN postagens p ON u.id = p.usuario_id;



SELECT nome, nome_pedido FROM clientes
INNER JOIN pedidos ON clientes.id = pedidos.id_clientes
WHERE nome_pedido = "pizza"






-- minhas configurações git para fazer upload dos meus codigos
git init
git config --global user.name ""
git config --global user.email ""
git add .
git push