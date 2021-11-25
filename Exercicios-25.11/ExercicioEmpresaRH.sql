-- Criar banco de dados
create database db_empresa;

-- Selecionar o banco de dados para uso
use db_empresa;

-- Criar Tabela
create table tb_funcionario(
	id bigint auto_increment unique,
    nome varchar (255) not null,
    cpf varchar (11),
    rg varchar (9),
    salario decimal (8,2),
    idade int,
	primary key (id)
);

-- Inserir valores na tabela
insert into tb_funcionario (nome, cpf, rg, salario, idade) values ("Vitor Crivelaro", "12345678910", "11258447X", 1.500, 27);
insert into tb_funcionario (nome, cpf, rg, salario, idade) values ("Ana Clara Crivelaro", "45685235784", "55486999A", 2.200, 20);
insert into tb_funcionario (nome, cpf, rg, salario, idade) values ("Denise da Silva Crivelaro", "15935745658", "48562123T", 5.500, 54);
insert into tb_funcionario (nome, cpf, rg, salario, idade) values ("Nathália Carvalho", "15325875369", "22589987P", 4.500, 31);
insert into tb_funcionario (nome, cpf, rg, salario, idade) values ("Ághatha Carvalho", "68415395146", "64789654C", 1.000, 29);

-- Alterar estrutura da tabela 
alter table tb_funcionario modify salario decimal (8,3);

-- Mostrar Tabela
select * from tb_funcionario;

-- Mostrar pessoas com o salario maior que 2000
select * from tb_funcionario where salario >2.000;

-- Mostrar pessoas com o salario menor que 2000
select * from tb_funcionario where salario <2.000;

-- Atualizar dado da tabela 

update tb_funcionario set salario = 3.000 where id = 5;