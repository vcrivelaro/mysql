-- Criar banco de dados
create database db_cidade_das_carnes;

-- Selecionar o banco de dados para uso
use db_citb_categoriadade_das_carnes;

-- Criar Tabela
create table tb_categoria(
	id bigint auto_increment unique,
    carne boolean,
    ave boolean,
    peixe boolean,
    primary key (id)
);
-- Inserir valores na tabela
insert into tb_categoria (carne, ave, peixe) Values (true,false,false);
insert into tb_categoria (carne, ave, peixe) Values (false,true,false);
insert into tb_categoria (carne, ave, peixe) Values (false,false,true);


-- Criar 2ª Tabela
create table tb_produto(
	id bigint auto_increment unique,
	nome varchar(255),
    vencimento varchar(255),
    valor decimal (8,2),
    quilo_armazenado decimal(8,2),
    categoria_id bigint,
    primary key (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
 );   
-- Inserir valores da 2ª tabela
insert into tb_produto (nome, vencimento, valor, quilo_armazenado, categoria_id) values ("Filé Mignon", "17/05/2022", 40.00, 1000, 1);
insert into tb_produto (nome, vencimento, valor, quilo_armazenado, categoria_id) values ("Picanha", "01/04/2022", 100.00, 1200, 1);
insert into tb_produto (nome, vencimento, valor, quilo_armazenado, categoria_id) values ("Alcatra", "13/12/2021", 50.00, 950, 1);
insert into tb_produto (nome, vencimento, valor, quilo_armazenado, categoria_id) values ("Coxa de Frango", "25/12/2021", 10.00, 500, 2);
insert into tb_produto (nome, vencimento, valor, quilo_armazenado, categoria_id) values ("Asa de Frango", "01/03/2022", 30.00, 200, 2);
insert into tb_produto (nome, vencimento, valor, quilo_armazenado, categoria_id) values ("Peito de Frango", "17/02/2022", 66.00, 9500, 2);
insert into tb_produto (nome, vencimento, valor, quilo_armazenado, categoria_id) values ("Bacalhau", "01/01/2022", 10.00, 150, 3);
insert into tb_produto (nome, vencimento, valor, quilo_armazenado, categoria_id) values ("Merluza", "16/04/2022", 30.90, 600, 3);

-- Mostrar Tabela
select * from tb_categoria;
select * from tb_produto;
select * from tb_produto where valor>50;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where nome like "%c%";
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id  = tb_categoria.id;
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id  = tb_categoria.id where ave = true;
