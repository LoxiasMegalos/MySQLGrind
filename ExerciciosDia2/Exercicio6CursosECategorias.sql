create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias (
	id bigint auto_increment primary key,
    nome varchar(255) unique not null,
	quantidade_aulas integer not null
);

create table tb_cursos (
	id bigint auto_increment primary key,
	nome varchar(255) not null,
    professor_responsavel varchar(255) not null,
    data_inicio date not null,
    valor decimal(6,2) not null,
    categoria_id integer references tb_categorias(id)
);

insert into tb_categorias (nome,quantidade_aulas) values ("Backend", 12), ("Front End", 10), ("Data Science", 10), ("Mobile", 12), ("Banco de Dados",10);

insert into tb_cursos(nome, professor_responsavel, data_inicio, valor, categoria_id) values
("Java", "Murillo", "2022-09-02", 1058.00, 1),
("HTML e CSS", "Murillo", "2022-09-02", 798.00, 2),
("Python", "Murillo", "2022-09-02", 858.00, 3),
("Kotlin", "Murillo", "2022-09-02", 998.00, 4),
("Swift", "Murillo", "2022-09-02", 998.00, 4),
("SQL - MySQL", "Murillo", "2022-09-02", 498.00, 5),
("C#", "Murillo", "2022-09-02", 1098.00, 1),
("C++", "Murillo", "2022-09-02", 998.00, 1);

select * from tb_cursos where valor > 500.00;

select * from tb_cursos where valor between 600.00 and 1000.00;

select * from tb_cursos where nome like "%j%";

select * from tb_cursos join tb_categorias on tb_categorias.id = tb_cursos.categoria_id;

select tb_cursos.nome, valor, tb_categorias.nome, tb_categorias.quantidade_aulas from tb_cursos inner join tb_categorias on tb_categorias.id = tb_cursos.categoria_id;

select * from tb_cursos inner join tb_categorias on tb_categorias.id = tb_cursos.categoria_id where tb_categorias.nome = "Mobile";

