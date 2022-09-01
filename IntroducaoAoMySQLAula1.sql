/* Criar o banco de dados */

CREATE DATABASE db_quitanda;

-- Selecionar o schema que a tabela sera criada
Use db_quitanda;


Create table tb_produto(
	id BIGINT auto_increment,
    nome varchar(255) not null,
    quantidade int,
    data_validade date,
    preco decimal,
    primary key(id)
);

/* Inserindo dados na tabela */

insert into tb_produtos(nome, quantidade, data_validade, preco) values ('Morango', 22, '2022-12-31', 1);
insert into tb_produtos(nome, quantidade, data_validade, preco) values ('Laranja', 22, '2022-11-12', 1);
insert into tb_produtos(nome, quantidade, data_validade, preco) values ('Bala Fini', 12, '2023-05-05', 5);
insert into tb_produtos(nome, quantidade, data_validade, preco) values ('Jambo', 100, '2022-10-16', 0.5);
insert into tb_produtos(nome, quantidade, data_validade, preco) values ('Amora', 150, '2022-11-16', 0.5);

select * from tb_produtos;
select nome, preco from tb_produtos;
select * from tb_produtos where preco >= 5;
select * from tb_produtos where id = 1;

delete from tb_produtos where nome = 'Morango' and id = 2;

update tb_produtos set id = id-1 where id = 7 ;

-- Alterações na estratura da tabela
Alter table tb_produto rename tb_produtos;

-- Alterar o tipo do atributo da tabela

alter table tb_produtos modify preco decimal(5, 2);

-- Adicionar mais uma coluna na tabela

alter table tb_produtos add descricao varchar(255);

update tb_produtos
	set descricao = 'teste'
    where id > 0;
    
-- Excluir atributos da tabela

alter table tb_produtos drop descricao;

/* Alterar os dados da tabela */

update tb_produtos set preco = 10.52 where id = 1;

select * from tb_produtos;

-- Deletar um item

delete from tb_produtos where id = 5;

update tb_produtos set id = id - 1 where id > 5;

-- segurança do banco

SET SQL_SAFE_UPDATES = 1;

Delete from tb_produtos;