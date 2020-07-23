-- Criando o banco de dados 
create database db_RH2
default character set utf8
default collate utf8_general_ci;

-- Criando a tabela Funcionarios

use db_rh2;
create table tb_funcionario(
id int not null auto_increment,
nome varchar (30) not null,
admissao date,
codigo int,
setor varchar(20) not null,
salario decimal(6,2),
primary key (id)
)default charset = utf8;

-- Criando a tabela cargo

create table tb_cargo(
cargo_id int not null auto_increment,
codigo int,
nome varchar(30) not null,
setor varchar(30) not null,
primary key (cargo_id)
) default charset = utf8;



-- populando a tabela funcionarios
insert into tb_funcionario 
 (id,nome,admissao,codigo,setor,salario)
 values
 (DEFAULT, 'Camila', '2011-03-21','32223', 'Adm', '1430.50'),
 (DEFAULT, 'Carlos', '2019-09-25','2221', 'TI', '4530.50'),
 (DEFAULT, 'Caio', '204-09-24','22232', '	Limpeza', '1230.50'),
 (DEFAULT, 'Maya', '2002-06-12','55546', 'Atendimento', '1430.50'),
 (DEFAULT, 'Gilda', '2004-11-18','8889', 'Vendas', '1450.90'),
 (DEFAULT, 'Celeste', '2000-08-14','9999', 'Financeiro', '2500.50'),
 (DEFAULT, 'Matias', '2003-04-13','33322', 'Financeiro', '2000.00'),
 (DEFAULT, 'Carol', '2012-12-13','0209', 'TI', '4300.00');
select*from tb_funcionario;

-- Populando a tabela cargos 

insert into tb_cargo 
 (cargo_id ,codigo,nome,setor)
 values
 (default, '8888','Gustavo', 'Financeiro');

select*from tb_cargo;

-- fazendo os selects

select*from tb_funcionario where salario > 2000;/*Salarios maiores que 2000*/
select*from tb_funcionario where salario < 2000;/*Salarios menores que 2000*/
select*from tb_funcionario where salario between 1000 and 2000;/*Salarios entre 1000 e 2000*/
select*from tb_funcionario where nome like'C%';/*todos os funcionarios com a letra C*/

/*Usando o INNER Join*/
select tb_funcionario.nome ,tb_funcionario.responsavelSetor,  tb_cargo.nome 
from tb_funcionario  join tb_cargo on tb_cargo.cargo_id = tb_funcionario.responsavelSetor ;








