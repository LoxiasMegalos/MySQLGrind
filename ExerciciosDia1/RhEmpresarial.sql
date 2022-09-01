create database db_rh;

use db_rh;

create table colaboradores(
	id bigint auto_increment,
	nome varchar(255) not null,
    idade integer not null,
    salario decimal(5,2) not null,
    data_inicio date not null,
    primary key(id)
);

alter table colaboradores modify salario decimal(7,2);

insert into colaboradores(nome, idade, salario, data_inicio)values('Murillo', 22, 9000, '2022-10-30');
insert into colaboradores(nome, idade, salario, data_inicio)values('Roberto', 90, 30000, '1970-10-05');
insert into colaboradores(nome, idade, salario, data_inicio)values('Maira', 45, 17000, '2005-03-23');
insert into colaboradores(nome, idade, salario, data_inicio)values('Amanda', 32, 12000, '2012-08-25');
insert into colaboradores(nome, idade, salario, data_inicio)values('Raissa', 23, 9800, '2021-11-05');

select * from colaboradores;

select * from colaboradores where salario > 2000;

select * from colaboradores where salario < 2000;

update colaboradores set salario = 9500 where id = 1; 