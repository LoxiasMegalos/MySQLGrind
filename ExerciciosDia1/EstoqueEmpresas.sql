create database db_ecommerces;

use db_ecommerces;

create table estoque_empresa_x(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco_unitario decimal(7,2) not null,
    quantidade integer not null,
    valor_total decimal(8,2),
    primary key(id)
);

drop table estoque_empresa_x;

select * from estoque_empresa_x;

insert into estoque_empresa_x(nome, preco_unitario, quantidade) values('Sensor a', 350, 5);
insert into estoque_empresa_x(nome, preco_unitario, quantidade) values('Sensor b', 1200, 3);
insert into estoque_empresa_x(nome, preco_unitario, quantidade) values('Sensor c', 190, 10);
insert into estoque_empresa_x(nome, preco_unitario, quantidade) values('Sensor d', 72, 32);
insert into estoque_empresa_x(nome, preco_unitario, quantidade) values('Sensor e', 3500, 3);
insert into estoque_empresa_x(nome, preco_unitario, quantidade) values('Sensor f', 20000, 1);
insert into estoque_empresa_x(nome, preco_unitario, quantidade) values('Sensor g', 402, 8);
insert into estoque_empresa_x(nome, preco_unitario, quantidade) values('Sensor h', 25.99, 3);



select * from estoque_empresa_x where preco_unitario > 500;
select * from estoque_empresa_x where preco_unitario < 500;

update estoque_empresa_x set quantidade = 6 where id = 1;

update estoque_empresa_x set valor_total = preco_unitario * quantidade where id > 0;