-- Criando o banco de dados 
create database db_farmacia_do_bem
default character set utf8
default collate utf8_general_ci;

/*Criando a tabela Produtos*/
use db_farmacia_do_bem;
create table tb_produto_farm(
id int not null auto_increment,
nome varchar (30) not null,
Comprimido enum('Sim', 'Em gotas'),
codigo int,
peso_Em_KG decimal(3,2) not null,
preco decimal(6,2),
primary key (id)
)default charset = utf8;

/*Criando a tabela categoria*/
create table tb_categoria_farm(
id_cat int not null auto_increment,
tipo varchar(30) not null,
disponibilidade int,
primary key (id_cat)
) default charset = utf8;

-- Populando a tabela Produto
insert into tb_produto_farm
(id, nome, Comprimido, codigo, peso_Em_kG, preco)
values
 (default, 'Dorflex','Sim',9989, 5.3, 5.52),
 (default, 'Pantogar','Sim', 1112, 7.3, 221.99),
 (default, 'Imecap Hair', 'Sim',3323, 9.3, 86.72),
 (default, 'Systane UL','Em gotas', 0009, 9.3, 68.49),
(default, 'Lacrima Plus','Em gotas', 2233, 1.3, 22.29),
(default, 'Ansiodoron','Em gotas', 4233, 9.4, 72.49),
(default, 'Mirtazapina','Sim', 9998, 5.0, 56.80),
(default, 'Alenia', 'Sim', 22441, 1.7, 101.49);
select*from tb_produto_farm;

-- Populando a tabela Produto
insert into tb_categoria_farm
(id_cat, tipo, disponibilidade)
values
(default, 'A venda', 22),
(default, 'Com receita', 44),
(default, 'A venda', 23),
(default, 'Com receita', '12'),
(default, 'A venda', 10),
(default, 'Com eceita', 30),
(default, 'Com receita', 3),
(default, 'A venda', 13);
select*from tb_categoria_farm;

-- fazendo os SELECTS
select*from tb_produto_farm where preco > 50;/*Produtos com valor maior que 50*/
select*from tb_produto_farm where preco < 50;/*Produtos com valor menor que 50*/
select*from tb_produto_farm where preco between 3 and 60;/*Produtos entre 3 e 60*/
select*from tb_produto_farm where nome like 'A%';/*Produtos que começam com A*/

-- Fazendo o INNER JOIN

select tb_produto_farm.id,  tb_produto_farm.nome,tb_produto_farm.estoque,tb_categoria_farm.disponibilidade
 from tb_produto_farm join tb_categoria_farm on tb_produto_farm.id = tb_categoria_farm.id_cat;


update tb_produto_farm set estoque = '7'where id = '5';
select*from tb_produto_farm;
