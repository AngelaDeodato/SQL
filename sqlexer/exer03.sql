create database escola
default character set utf8
default collate utf8_general_ci;
 
 use escola;
 create table  alunos(
 id int not null auto_increment,
 nome varchar (30) not null ,
 matricula int ,
 sexo enum ('M','F'),
 sala int,
 prof varchar(30),
 nota int,
 primary key(id)
 )default charset = utf8;
 
 
 
 insert into alunos 
 (id, nome, matricula, sexo, prof, nota)
 values
 (default, 'Beatriz','443524', 'F', 'Maria das Dores', '4'),
 (default, 'Bruno','55364', 'M', 'Maria das Dores', '8'),
 (default, 'Marcos','555463', 'M', 'José Ferreira','9'),
 (default, 'Gabriela','555463', 'F', 'Ana Martins','10'),
 (default, 'Geovanna','888976', 'F', 'Bruna Ferraz', '3'),
 (default, 'Theodora','66674', 'F', 'Bruna Ferraz','7'),
 (default, 'Guilherme','88989', 'M', 'Jose Ferreira', '10'),
 (default, 'Monique','555342', 'F', 'Jose Ferreira', '8'),
 (default, 'Murilo','54545', 'M', 'Maria das Dores','4'),
 (default, 'Debora','99934', 'F', 'Jose ferreira','5'),
 (default, 'Camila','22221', 'F', 'Ana Martins','7'),
 (default, 'Felipe ','99932', 'M', 'Ana Martins', '8'),
 (default, 'Diego ','555463', 'M', 'Ana Martins','10'),
 (default, 'gerson ','44432', 'M', 'Maria das Dores','8'),
 (default, 'Eduardo ','9990', 'M', 'Ana Martins','9');
 
 select*from alunos;
 
 select*from alunos where nota > 7;
 select*from alunos where nota < 7;
 
