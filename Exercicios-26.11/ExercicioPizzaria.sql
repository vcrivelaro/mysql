-- Criar banco de dados
create database db_pizzaria_legal;

-- Selecionar o banco de dados para uso
use db_pizzaria_legal;

-- Criar Tabela
create table tb_categoria(
	id bigint auto_increment unique,
	tamanho varchar(250),
    salgado boolean,
    doce boolean,
    primary key (id)
);
-- Inserir valores na tabela
insert into tb_categoria (tamanho, salgado, doce) values ("Pequena", false, true);
insert into tb_categoria (tamanho, salgado, doce) values ("Media", false, true);
insert into tb_categoria (tamanho, salgado, doce) values ("Grande", false, true);
insert into tb_categoria (tamanho, salgado, doce) values ("Pequena", true, false); 
insert into tb_categoria (tamanho, salgado, doce) values ("Media", true, false); 
insert into tb_categoria (tamanho, salgado, doce) values ("Grande", true, false);

-- Criar 2ª Tabela
create table tb_pizza(
	id bigint auto_increment unique,
     sabor varchar(255),
     valor decimal(8,2),
     descricao varchar(255),
     quantidade int,
     borda varchar(255),
    pizza_id bigint,
    primary key (id),
    FOREIGN KEY (pizza_id) REFERENCES tb_categoria (id)
 );   
-- Inserir valores da 2ª tabela
insert into tb_pizza (sabor, valor, descricao, quantidade, borda, pizza_id) Values ("Brigadeiro",27.90, "Chocolate original com granulado",1, "Recheada com chocolate",1);
insert into tb_pizza (sabor, valor, descricao, quantidade, borda, pizza_id) Values ("Prestígio",37.90, "Chocolate com coco ralado",2, "Sem recheio",2);
insert into tb_pizza (sabor, valor, descricao, quantidade, borda, pizza_id) Values ("Romeu e Julieta",55.90, "Goiaba com queijo",4, "Sem recheio",3);
insert into tb_pizza (sabor, valor, descricao, quantidade, borda, pizza_id) Values ("Muçarela",27, "Queijo e tomate",1, "Borda de cheddar",4);
insert into tb_pizza (sabor, valor, descricao, quantidade, borda, pizza_id) Values ("Frango com catupiry",45.90, "Frango desfiado com catupiry",2, "Recheada com catupiry",5);
insert into tb_pizza (sabor, valor, descricao, quantidade, borda, pizza_id) Values ("Calabresa",52.90, "Calabresa com cebola ",2, "Recheada com requeijão",6);
insert into tb_pizza (sabor, valor, descricao, quantidade, borda, pizza_id) Values ("Camarão",65.90, "Camarão com queijo",1, "Sem recheio",6);
insert into tb_pizza (sabor, valor, descricao, quantidade, borda, pizza_id) Values ("Portuguesa",43.00, "Ovos, cebola, azeitona, ervilha, queijo e presunto",1, "Recheada com catupiry",5);

-- Mostrar Tabela
select * from tb_categoria;
select * from tb_pizza;
select * from tb_pizza where valor>45;
select * from tb_pizza where valor between 29 and 60;
select * from tb_pizza where sabor like "%c%";
select * from tb_pizza inner join tb_categoria on tb_pizza.pizza_id	= tb_categoria.id;
select * from tb_pizza inner join tb_categoria on tb_pizza.pizza_id	= tb_categoria.id where doce = true;
