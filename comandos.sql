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