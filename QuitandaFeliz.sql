create database aulaSQLdia2;

use aulaSQLdia2;

create table categorias(
	id bigint auto_increment primary key,
	descricao varchar(255)
);

create table produtos(
	id bigint auto_increment primary key,
	nome varchar(255) not null,
    quantidade integer,
    data_validade date,
    preco decimal(6,2) not null,
    categoria_id integer not null references categorias(id) 
    -- primary key(id),
    -- foreign key (categoria_id) references categorias(id)
);

drop table produtos;

insert into categorias(descricao)values("frutas"),("legumes"),("ovos"),("carnes"),("outros");

insert into categorias(descricao) values("guloseimas");

select * from categorias;

insert into produtos(nome, quantidade, data_validade, preco, categoria_id) values
	('Cenoura', 10, '2022-11-15', 10.75, 2),
    ('Ovo Caipira', 32, '2022-11-15', 5.43, 3),
    ('Peito de Frango', 50, '2022-11-15', 300.90, 4),
    ('Picanha', 5, '2023-02-15', 500.00, 4),
    ('Saco Plastico', 100, '2022-11-15', 20.32, 5),
    ('Maçã', 55, '2022-12-03', 50.21, 1)
    ;

insert into produtos(nome, quantidade, data_validade, preco, categoria_id) values ('Amora', 5, '2023-02-15', 20.05, 1);
select * from produtos;

select nome, categorias.descricao from produtos join categorias on categorias.id = produtos.categoria_id;

-- seleção diferente de dados 
-- ordenação 
-- crescente
select * from produtos order by nome asc;
-- decrescente
select * from produtos order by preco desc;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

/*Operadores In e Between*/

select * from produtos where preco in(300.90, 500.00) order by preco desc;

select * from produtos where preco between 0 and 100 order by preco;

select * from produtos where data_validade between '2022-12-10' and '2023-03-15'order by data_validade, nome;

/*Operador Like*/

-- Localizar todos os produtos que iniciem com ra

select * from produtos where nome like 'ra%';
select * from produtos where nome like 'pi%' or nome like 'pe%';

-- Localizar todos os produtos que terminem com ra

select * from produtos where nome like '%ra';

-- Localizar todos os produtos que contenham ra em qualquer posição

select * from produtos where nome like '%ra%';

/*Consultas com operadores matematicos*/

-- Contando o total de produtos
Select count(*) as "total de produtos" from produtos;

-- Contando o total de produtos que tenha categoria_id
Select count(categoria_id) as "Produtos com categorias" from produtos;

-- Contando o total de produtos que tenha categoria_id = 4

select count(categoria_id) as "Quantidade de carnes" from produtos where categoria_id = 4;

-- Soma de todos os preços dos produtos

select sum(preco) as "Custo total" from produtos;

-- Media dos precos dos produtos

select avg(preco) as "Media de preços" from produtos;

-- group by com claculos

select categorias.descricao , avg(preco) as media_preco from produtos join categorias on categorias.id = produtos.categoria_id group by categoria_id;

-- Mostrar o maior preço

select max(preco) from produtos;

select nome, preco from produtos where preco = (select max(preco) from produtos);

-- Mostrar menor preço

select min(preco) as "Menor preço" from produtos;

/*Operador Join*/

select nome, preco, quantidade, categorias.descricao from produtos inner join categorias on categorias.id = produtos.categoria_id;

-- left join

select nome, preco, quantidade, categorias.descricao
from produtos left join categorias
on produtos.categoria_id = categorias.id;

-- right join

select nome, preco, quantidade, categorias.descricao
from produtos right join categorias
on produtos.categoria_id = categorias.id;
