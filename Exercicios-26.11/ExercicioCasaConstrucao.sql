-- Criar banco de dados
create database db_construindo_a_nossa_vida;

-- Selecionar o banco de dados para uso
use db_construindo_a_nossa_vida;

-- Criar Tabela
create table tb_categoria(
	id bigint auto_increment unique,
    hidraulica boolean,
    construcao boolean,
    ferramenta boolean,
    primary key (id)
);
-- Inserir valores na tabela
insert into tb_categoria (hidraulica, construcao, ferramenta) Values (true,false,false);
insert into tb_categoria (hidraulica, construcao, ferramenta) Values (false,true,false);
insert into tb_categoria (hidraulica, construcao, ferramenta) Values (false,false,true);

-- Criar 2ª Tabela
create table tb_produto(
	id bigint auto_increment unique,
	nome varchar(255) not null,
    quantidade int,
    preco decimal (8,2),
    cor varchar (255) not null,
	descricao varchar (255) not null,
    categoria_id bigint,
    primary key (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
 );   
-- Inserir valores da 2ª tabela
insert into tb_produto (nome, quantidade, preco, cor, descricao, categoria_id) values ("Cimento", 26, 10.00, "Cinzo", "Saco de 50kg",2);
insert into tb_produto (nome, quantidade, preco, cor, descricao, categoria_id) values ("Argamassa", 50, 450.00, "Branco", "Saco com 5kg",2);
insert into tb_produto (nome, quantidade, preco, cor, descricao, categoria_id) values ("Bacia", 10, 50.90, "Branco", "Kit bacia com caixa acoplada",2);
insert into tb_produto (nome, quantidade, preco, cor, descricao, categoria_id) values ("Tanque", 80, 2500.00, "Cinza", "Tanque de lavar roupa 18 a 26 Litros",2);
insert into tb_produto (nome, quantidade, preco, cor, descricao, categoria_id) values ("Serra", 30, 50.00, "Prata", "Serra automática",3);
insert into tb_produto (nome, quantidade, preco, cor, descricao, categoria_id) values ("Furadeira", 6, 65.00, "Azul com Vermelho", "Fura qualquer parede",3);
insert into tb_produto (nome, quantidade, preco, cor, descricao, categoria_id) values ("Cuba de apoio", 4, 50.50, "Marrom", "Para deixar sua pia linda",2);
insert into tb_produto (nome, quantidade, preco, cor, descricao, categoria_id) values ("Caixa D'Agua ", 8, 100.00, "Azul", "Caixa D'Agua que suporta 1000 litros ",1);

-- Mostrar Tabela
select * from tb_categoria;
select * from tb_produto;
select * from tb_produto where preco>50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%c%";
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id  = tb_categoria.id;
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id  = tb_categoria.id where hidraulica = true;
