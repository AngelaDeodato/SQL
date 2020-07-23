create database db_ecommerce2;
-- Criando a tabela PRODUTO
create table tb_produto(
id int not null auto_increment,
nome varchar(30) not null,
cor enum('Preto', 'Branco'),
marca varchar (30),
preco decimal(6,2),
primary key(id)
)default charset = utf8;

-- Criando a tabela CATEGORIA

create table tb_categoria(
id_cat int not null auto_increment,
tipo varchar(30) not null,
disponibilidade int,
primary key (id_cat)
) default charset = utf8;


-- Populando a tabela Produto

insert into tb_produto 
(id, nome, cor, marca, preco)
values

(default, 'Refrigerador', 'Branco','Consul', '2999.00'),
(default, 'Lavadora de Roupas', 'Branco','Eletrolux', '1499.00'),
(default, 'Freezer Horizontal', 'Preto','Consul', '1999.00'),
(default, 'Smart TV LED 50', 'Preto','Samsung', '1199.00'),
(default, 'Impressora', 'Branco','Wireless', '499.00'),
(default, 'Smart TV LED 50', 'Preto','Philips', '2099.00'),
(default, 'Notebook Dell', 'Preto','Dell', '2249.00'),
(default, 'Notebook Acer', 'Branco','Acer', '4249.00'),
(default, 'Cozinha Completa', 'Preto','Emily', '549.00'),
(default, 'Cadeira Job Diretor', 'Preto','Back System', '539.00'),
(default, 'Cadeira Giratória ', 'Preto','Addit', '849.00'),
(default, 'Cama Box', 'Branco','Umaflex Fascinium', '1049.00'),
(default, 'Secador de Cabelos ', 'Preto','Taiff', '189.00'),
(default, 'Chapinha', 'Branco','Taiff', '89.00'),
(default, 'Samsung Galaxy AO3', 'Preto','Samsung', '3849.00');

select*from tb_produto;

-- Populando a tabela Produto

insert into tb_categoria 
(id_cat, tipo, disponibilidade)
values
(default, 'Eletronico', '8'),
(default, 'Eletrodomestico', '23'),
(default, 'Moveis', '5'),
(default, 'Beleza', '2'),
(default, 'Escritorio', '3');

select*from tb_categoria;

-- fazendo os SELECTS
select*from tb_produto where preco > 2000;/*Produtos com valor maior que 2000*/
select*from tb_produto where preco < 2000;/*Produtos com valor menor que 2000*/
select*from tb_produto where preco between 1000 and 2000;/*Produtos entre 1000 e 2000*/
select*from tb_produto where nome like 'C%';/*Produtos que começam com C*/

-- Fazendo o INNER JOIN

select tb_produto.id,  tb_produto.nome,tb_produto.estoque,tb_categoria.disponibilidade
 from tb_produto join tb_categoria on tb_produto.id = tb_categoria.id_cat;





