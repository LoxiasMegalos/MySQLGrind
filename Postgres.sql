create table familia(
	id serial primary key,
	nome varchar not null
);

create table comidasDaDispensa(
	id serial,
	nome_comida varchar not null,
	id_pessoa_que_comeu integer references familia(id) exclusive,
	primary key(id, id_pessoa_que_come
				u)
);

select * from familia


insert into familia(nome) values ('Murillo');
insert into familia(nome) values ('Julia');
insert into familia(nome) values ('Eduardo');
insert into familia(nome) values ('Edna');


select * from comidasDaDispensa

insert into comidasdadispensa(nome_comida, id_pessoa_que_comeu) values('bolacha', 1)
insert into comidasdadispensa(nome_comida, id_pessoa_que_comeu) values('bolacha', 2)

drop table comidasdadispensa