-- Criar banco de dados
create database db_cursoDaMinhaVida;

-- Selecionar o banco de dados para uso
use db_cursoDaMinhaVida;

-- Criar Tabela
create table tb_categoria(
	id bigint auto_increment unique,
    java boolean,
    idioma boolean,
    admnistracao boolean,
    primary key (id)
);
-- Inserir valores na tabela
insert into tb_categoria (java, idioma, admnistracao) Values (true,false,false);
insert into tb_categoria (java, idioma, admnistracao) Values (false,true,false);
insert into tb_categoria (java, idioma, admnistracao) Values (false,false,true);

-- Criar 2ª Tabela
create table tb_produto(
	id bigint auto_increment unique,
	nome varchar(255) not null,
    quantidade_de_aulas int,
    preco decimal (8,2),
    horas decimal (8,2),
	descricao varchar (255) not null,
    categoria_id bigint,
    primary key (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
 );   
-- Inserir valores da 2ª tabela
insert into tb_produto (nome, quantidade_de_aulas, preco, horas, descricao, categoria_id) values ("Operadores Lógicos - Java", 2, 30.00, 3.00, "Aprenda sobre os operadores lógicos em Java",1);
insert into tb_produto (nome, quantidade_de_aulas, preco, horas, descricao, categoria_id) values ("Laços condicionais - Java", 3, 50.00, 8.00, "Aprenda sobre os laços condicionais  em Java",1);
insert into tb_produto (nome, quantidade_de_aulas, preco, horas, descricao, categoria_id) values ("Orientacao ao objeto - Java", 5, 100.00, 10.00, "Aprenda sobre a orientacao ao objeto em Java",1);
insert into tb_produto (nome, quantidade_de_aulas, preco, horas, descricao, categoria_id) values ("Inglês", 40, 1030.00, 140.00, "Aprenda a falar Inglês",2);
insert into tb_produto (nome, quantidade_de_aulas, preco, horas, descricao, categoria_id) values ("Japonês", 20, 2000.00, 130.00,"Aprenda a falar Japonês xD",2);
insert into tb_produto (nome, quantidade_de_aulas, preco, horas, descricao, categoria_id) values ("Francês", 50, 450.00, 3.00, "Aprenda a falar Francês",2);
insert into tb_produto (nome, quantidade_de_aulas, preco, horas, descricao, categoria_id) values ("Plano de Negócios - ADM", 4, 60.00, 333.00, "Aprenda o básico sobre o mundo dos negócios",3);
insert into tb_produto (nome, quantidade_de_aulas, preco, horas, descricao, categoria_id) values ("Administração de Hotéis - ADM", 5, 230.00, 63.00, "Aprenda a como administrar um hótel",3);

-- Mostrar Tabela
select * from tb_categoria;
select * from tb_produto;
select * from tb_produto where preco>50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%j%";
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id  = tb_categoria.id;
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id  = tb_categoria.id where java = true;

