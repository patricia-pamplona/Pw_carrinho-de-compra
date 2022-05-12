CREATE TABLE pessoa(
	id_pessoa int NOT NULL PRIMARY KEY generated always as identity,
	nome varchar (60) NOT NULL,
	email varchar (60) NOT NULL,
	senha varchar(60) NOT NULL,
	categoria boolean not null
);

CREATE TABLE Produtos(
	id_produtos int NOT NULL PRIMARY KEY generated always as identity,
	preco real NOT NULL,
	nome varchar (60) NOT NULL,
	descricao varchar (300) NOT NULL,
	estoque int	NOT NULL
);

CREATE TABLE Compra(
	id_compra int NOT NULL primary key generated always as identity,
	id_pessoa int not null,
	constraint FK_comp_pess foreign key (Id_pessoa) references Pessoa (id_pessoa) 

);
Create TABLE Compra_produto(
	id_compraProduto int NOT NULL PRIMARY KEY generated always as identity,
	id_compra int not null,
	quantidade int not null,
	constraint FK_comp_prod_comp foreign key (Id_compra) references Compra (id_compra) 
);
INSERT INTO Compra (id_pessoa) values (1);
select * from Compra;
select * from Compra_produto;
INSERT INTO Compra_produto (id_compra, quantidade) values (1, 1);

INSERT INTO lojista (nome, email, senha) values ('João do caminhão', 'joao@gmail.com', 'joao123');

INSERT INTO cliente (nome, email, senha) values ('Jorge', 'jorge@gmail.com', 'jorge123');

select *from lojista

INSERT INTO listaProdutos 
(id_lojista, nome, descricao, preco, estoque, carrinho) 
values  (1, 'mesa', 'mesa de compuatdor', 10, 0, true);

INSERT INTO listaProdutos 
(id_lojista, nome, descricao, preco, estoque, carrinho) 
values (1,'caneta', 'caneta azul bic', 7, 1, false);

select *from listaProdutos
