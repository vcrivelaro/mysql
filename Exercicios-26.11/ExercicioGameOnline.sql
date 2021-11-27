-- Criar banco de dados
create database db_generation_game_online;

-- Selecionar o banco de dados para uso
use db_generation_game_online;

-- Criar Tabela
create table tb_classe(
	id bigint auto_increment unique,
    classe varchar (255),
    arma varchar (255),
    skill varchar (255),
    primary key (id)
);
-- Inserir valores na tabela
insert into tb_classe (classe, arma,skill) Values ("Guerreiro", "Espada e Escudo", "Investida");
insert into tb_classe (classe, arma,skill) Values ("Arqueiro", "Arco e Flecha", "Rajada de flechas");
insert into tb_classe (classe, arma,skill) Values ("Mago", "Cajado", "Terremoto");
insert into tb_classe (classe, arma,skill) Values ("Assassino", "Duas Adagas", "Golpe silencioso");
insert into tb_classe (classe, arma,skill) Values ("Berseker", "Espada de duas mãos", "Fúria");

-- Criar 2ª Tabela
create table tb_personagem(
	id bigint auto_increment unique,
    nome varchar (255),
    nivel int,
    ataque int,
    defesa int,
    hp int,
    classe_id bigint,
    primary key (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
 );   
-- Inserir valores da 2ª tabela
insert into tb_personagem (nome, nivel, ataque, defesa, hp, classe_id) values ("Leviatham", 75, 3500, 950, 2000, 3);
insert into tb_personagem (nome, nivel, ataque, defesa, hp, classe_id) values ("Executor", 80, 5000, 850, 3500, 4);
insert into tb_personagem (nome, nivel, ataque, defesa, hp, classe_id) values ("BrokenWings", 79, 1000, 7000,20000, 1);
insert into tb_personagem (nome, nivel, ataque, defesa, hp, classe_id) values ("Ártemis", 74, 4000, 650, 2500, 2);
insert into tb_personagem (nome, nivel, ataque, defesa, hp, classe_id) values ("Punisher", 80, 5000, 1500, 10000, 5);
insert into tb_personagem (nome, nivel, ataque, defesa, hp, classe_id) values ("20Matar70Correr", 1, 200, 100, 300, 4);
insert into tb_personagem (nome, nivel, ataque, defesa, hp, classe_id) values ("Noob123451", 10, 500, 400, 300, 1);
insert into tb_personagem (nome, nivel, ataque, defesa, hp, classe_id) values ("Tacomagia",2, 300, 50, 150, 3);

-- Mostrar Tabela
select * from tb_classe;
select * from tb_personagem;
select * from tb_personagem where ataque>2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "%c%";
select * from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id;
select * from tb_personagem inner join tb_classe  on tb_personagem.classe_id = tb_classe.id where tb_classe.id = 2;
