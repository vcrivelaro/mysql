-- Criar banco de dados
create database db_farmacia_do_bem;

-- Selecionar o banco de dados para uso
use db_farmacia_do_bem;

-- Criar Tabela
create table tb_categoria(
	id bigint auto_increment unique,
    corredor int,
    setor varchar(255),
    primary key (id)
);
-- Inserir valores na tabela
insert into tb_categoria (corredor, setor) Values (1, "Higiene Pessoal");
insert into tb_categoria (corredor, setor) Values (2, "Medicamentos");
insert into tb_categoria (corredor, setor) Values (3, "Dermocosméticos");
insert into tb_categoria (corredor, setor) Values (4, "Nutrição");
insert into tb_categoria (corredor, setor) Values (5, "Infantill");

-- Criar 2ª Tabela
create table tb_produto(
	id bigint auto_increment unique,
	nome varchar(255),
    idade_uso int,
    valor decimal (8,2),
    quantidade int,
    categoria_id bigint,
    primary key (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
 );   
-- Inserir valores da 2ª tabela
insert into tb_produto (nome, idade_uso, valor, quantidade, categoria_id) values ("Dipirona",12, 15.00, 20,2);
insert into tb_produto (nome, idade_uso, valor, quantidade, categoria_id) values ("Sabonete Líquido",6, 20.00, 48,1);
insert into tb_produto (nome, idade_uso, valor, quantidade, categoria_id) values ("Hidratante Facial",8, 100.00, 89,3);
insert into tb_produto (nome, idade_uso, valor, quantidade, categoria_id) values ("Suplemento Ailimentar",15, 200.00, 35,4);
insert into tb_produto (nome, idade_uso, valor, quantidade, categoria_id) values ("Fralda",1, 85.00, 45,5);
insert into tb_produto (nome, idade_uso, valor, quantidade, categoria_id) values ("Creme Preventivo para assadura",1, 15.00, 50,5);
insert into tb_produto (nome, idade_uso, valor, quantidade, categoria_id) values ("Dorflex",6, 37.00, 33,2);
insert into tb_produto (nome, idade_uso, valor, quantidade, categoria_id) values ("Rinosoro",4, 29.90, 20,2);

-- Mostrar Tabela
select * from tb_categoria;
select * from tb_produto;
select * from tb_produto where valor>50;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where nome like "%c%";
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id  = tb_categoria.id where tb_categoria.id = 3;
