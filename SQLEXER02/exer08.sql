use db_cidade_das_carnes;
create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_prod(
id bigint (5) auto_increment,
nome varchar(20) not null,
marca varchar (30),
preco decimal(6,2),
prod_id bigint not null,
primary key(id),
foreign key (prod_id) references tb_prod(id)
)default charset = utf8;


insert into tb_prod(nome, marca, prod_id)
values
("Cochao mole", "Friboi",1),
("Carne Moida", "Friboi",1),
("Filé mignon", "Friboi",1),
("Alcatra", "Korin",2),
("Picanha","Celeiro",3);
select*from tb_prod;

create table tb_cat(
id bigint auto_increment,
preco decimal(10,2),
primary key (id)
)default charset utf8;

insert into tb_cat(preco)
values
(23.88),
(44.40),
(56.88);
select*from tb_cat;

select*from tb_cat where preco > 50;/*Produtos com valor maior que 50,00*/
select*from tb_cat where preco < 50;/*Produtos com valor maior que 50,00*/
select*from tb_cat where preco between 3 and 60;/*Produtos entre 3 e 60*/
select*from tb_prod where nome like 'C%';/*Produtos que começam com C*/

-- Fazendo o INNER JOIN

select tb_prod.id,  tb_prod.nome,tb_prod.prod_id,tb_cat.preco, tb_prod.marca
 from tb_prod join tb_cat on tb_prod.id = tb_cat.id;


