create database db_escolas;

use db_escolas;

create table fichaDeAlunos(
	id bigint auto_increment,
	ra bigint,
    nome_aluno varchar(255) not null,
    serie integer not null,
    media_final decimal(4,2) not null,
    primary key(id,ra)
);

drop table fichaDeAlunos;

insert into fichaDeAlunos(ra, nome_aluno, serie, media_final)values(24334, 'Murillo', 3, 9.9);
insert into fichaDeAlunos(ra, nome_aluno, serie, media_final)values(24335, 'Joao', 3, 7.2);
insert into fichaDeAlunos(ra, nome_aluno, serie, media_final)values(24336, 'Jose', 3, 6.9);
insert into fichaDeAlunos(ra, nome_aluno, serie, media_final)values(24337, 'Maria', 3, 3.5);
insert into fichaDeAlunos(ra, nome_aluno, serie, media_final)values(24338, 'Madalena', 3, 5.6);
insert into fichaDeAlunos(ra, nome_aluno, serie, media_final)values(24339, 'Pedro', 3, 8.2);
insert into fichaDeAlunos(ra, nome_aluno, serie, media_final)values(24330, 'Jonas', 3, 8.5);
insert into fichaDeAlunos(ra, nome_aluno, serie, media_final)values(24332, 'Thiago', 3, 7.3);

select * from fichaDeAlunos;

select * from fichaDeAlunos where media_final >= 7.0;
select * from fichaDeAlunos where media_final < 7.0;

SET sql_safe_updates = 0;

update fichaDeAlunos set media_final = 7 where ra = 24336;