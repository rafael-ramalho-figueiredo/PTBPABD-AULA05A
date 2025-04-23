--Questão 1
CREATE TABLE pessoa (
	ID int PRIMARY KEY,
	nome varchar (100),
	sobrenome varchar (100),
	idade int,
	check (idade >= 0)
);

--Questão 2
ALTER TABLE pessoa
ADD CONSTRAINT constraint_pessoa UNIQUE (ID, nome, sobrenome);

--Questão 3
ALTER TABLE pessoa
MODIFY idade int not null;

--Questão 4
CREATE TABLE endereco (
    ID int PRIMARY KEY,
    rua varchar (255) NOT NULL
);

ALTER TABLE pessoa
ADD endereco int;

ALTER TABLE pessoa
ADD CONSTRAINT fk_endereco
FOREIGN KEY (endereco) REFERENCES endereco(ID);