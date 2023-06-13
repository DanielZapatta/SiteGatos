CREATE DATABASE gatoamigo;
USE gatoamigo;

CREATE TABLE cadastro_usuario (
	idcliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    sobrenome VARCHAR (45),
    celular CHAR (11),
    dtnasc DATE,
    email VARCHAR(32),
	senha VARCHAR(32)
);

CREATE TABLE cadastro_ong (
	idong INT PRIMARY KEY AUTO_INCREMENT,
	razaosocial VARCHAR(100),
	cnpj CHAR(14),
    cep CHAR(8),
    numend INT,
    email VARCHAR (80),
	senha VARCHAR(32)
)AUTO_INCREMENT = 1000;

CREATE TABLE cadastro_gatos (
	idgato INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    idade INT,
    raca VARCHAR(45),
    cor VARCHAR(45),
    fkidong INT,
    CONSTRAINT fkongato FOREIGN KEY (fkidong)
		REFERENCES cadastro_ong(idong)
)AUTO_INCREMENT = 100000;

select count(idgato) FROM cadastro_gatos;

truncate table cadastro_ong;

select * from cadastro_usuario;
select * from cadastro_ong;