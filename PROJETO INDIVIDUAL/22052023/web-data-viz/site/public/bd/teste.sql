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
	cnpj CHAR(18),
    cep CHAR(8),
    numend INT,
    email VARCHAR (80),
	senha VARCHAR(32)
)AUTO_INCREMENT = 1000;

CREATE TABLE cadastro_gatos (
	idgato INT PRIMARY KEY AUTO_INCREMENT,
    nome_gato VARCHAR(50),
    idade_gato DATE,
    raça_gato VARCHAR(45),
    cor_gato VARCHAR(45),
    quantosirmaos INT,
    fkidong INT,
    fkgatosirmaos INT,
    CONSTRAINT fkongato FOREIGN KEY (fkidong)
		REFERENCES cadastro_ong(idong),
	CONSTRAINT fkgatosirmaos FOREIGN KEY (fkgatosirmaos)
		REFERENCES cadastro_gatos(idgato)
)AUTO_INCREMENT = 100000;

select * from cadastro_usuario;