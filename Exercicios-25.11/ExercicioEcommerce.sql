-- Criar banco de dados
create database db_ecommerce;

-- Selecionar o banco de dados para uso
use db_ecommerce;

-- Criar Tabela
create table tb_produto(
	id bigint auto_increment unique,
    nome varchar(255) not null,
    quantidade int,
    preco decimal (8,2),
    cor varchar (255) not null,
	descricao varchar (255) not null,
    primary key (id)
);

-- Inserir valores na tabela
insert into tb_produto (nome, quantidade, preco, cor, descricao) values ("Impressora HP", 26, 510.00, "Branco", "Imprime e Scanneia");
insert into tb_produto (nome, quantidade, preco, cor, descricao) values ("Teclado corsair c345", 50, 450.00, "Preto", "Teclado mecanico");
insert into tb_produto (nome, quantidade, preco, cor, descricao) values ("Mouse logitech", 10, 650.90, "Azul", "mouse óptico");
insert into tb_produto (nome, quantidade, preco, cor, descricao) values ("Monitor 42 polegadas", 80, 2500.00, "Cinza", " Monitor Full HD");
insert into tb_produto (nome, quantidade, preco, cor, descricao) values ("Escrivaninha ", 30, 350.00, "Marrom", " Mesa para computador");
insert into tb_produto (nome, quantidade, preco, cor, descricao) values ("Poltrona", 6, 650.00, "Preto com roxo", "Cadeira muito confortável");
insert into tb_produto (nome, quantidade, preco, cor, descricao) values ("Gabinete", 4, 550.50, "Verde", "Gabnite simples");
insert into tb_produto (nome, quantidade, preco, cor, descricao) values ("Roteador ", 8, 100.00, "Branco", "Roteador com 4 portas e Wifi com alcance de 100 metros ");

-- Mostrar Tabela
select * from tb_produto;

-- Mostrar produto com valores acima de 500
select * from tb_produto where preco >500;

-- Mostrar produto com valores abaixo de 500
select * from tb_produto where preco <500;

-- Atualizar dado da tabela 

update tb_produto set quantidade = 10 where id = 6;