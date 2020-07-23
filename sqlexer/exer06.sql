/*CRIANDO O BANCO DE DADOS*/
create database db_pizzaria_legal
default character set utf8
default collate utf8_general_ci;

/*CRIANDO A TABELA PRODUTO*/
use db_pizzaria_legal;
create table tb_produto(
id int not null auto_increment,
sabor varchar (30) not null,
preco decimal (6,2),
borda_recheada enum('S', 'N') not null,
primary key (id)
)default charset = utf8;

/*CRIANDO A TABELA CATEGORIA*/

create table tb_categoria(
id_cat int not null auto_increment,
tipo  varchar (30) not null,
disponibilidade enum('Tem', 'Não Tem'),
primary key (id_cat)
)default charset = utf8;

/*POPULANDO A TABELA PRODUTOS*/
use db_pizzaria_legal;
 insert into tb_produto
 (id, sabor, preco, borda_recheada)
 values
 (default, 'Mussarela', 25.98, 'N'),
 (default, 'Calabresa', 19.00, 'N'),
 (default, 'Portuguesa', 34.98, 'S'),
 (default, 'Frango com catupiry', 45.00, 'S'),
 (default, 'Romeu e Julieta', 37.90, 'N'),
 (default, 'Atum', 20.0, 'N'),
 (default, 'Bauru', 23.50, 'S'),
 (default, 'Carne Seca', 45.00, 'S');
select*from tb_produto;
/*POPULANDO A TABELA CATEGORIA*/
	use db_pizzaria_legal;
 insert into tb_categoria
 (id_cat, tipo, disponibilidade)
values
(default, 'Normal', 'Tem'),
(default, 'Broto', 'Tem'),
(default, 'Normal', 'Não tem'),
(default, 'Broto', 'Tem'),
(default, 'normal', 'Não Tem'),
(default, 'normal', 'Tem'),
(default, 'Broto', 'Não Tem'),
(default, 'Broto', 'Tem');

/*INSERINDO A FOREING KEY*/
alter table tb_produto
add column estoque int;

alter table tb_produto
add foreign key (estoque) references tb_categoria(id_cat);


/*FAZENDO OS SELECTS*/
select*from tb_produto where preco > 45;/*Produtos com valor maior que 45,00*/
select*from tb_produto where preco < 45;/*Produtos com valor meno que 45,00*/
select*from tb_produto where sabor like 'C%';/*Produtos que começam com C*/
select*from tb_produto where preco between 45 and 60;/*Produtos entre 45 e 60*/

/*FAZENDO O INNER JOIN*/
select tb_produto.id,  tb_produto.sabor,tb_categoria.disponibilidade
 from tb_produto join tb_categoria on tb_produto.id = tb_categoria.id_cat;

select*from tb_categoria;
select*from tb_produto;
