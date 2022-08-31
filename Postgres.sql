create table escovasDeDente(
	id serial primary key,
	cor varchar not null,
	id_familiar integer references familia(id) unique
);

create table familia(
	id serial primary key,
	nome varchar not null
);

create table comidasDaDispensa(
	id serial,
	nome_comida varchar unique,
	id_pessoa_que_comeu integer references familia(id),
	id_marca_do_alimento integer references marcaDoAlimento(id),
	primary key(id, id_pessoa_que_comeu, id_marca_do_alimento)
);


create table marcaDoAlimento(
	id serial primary key,
	nome_marca varchar unique
);

select * from escovasDeDente

insert into escovasdedente(cor, id_familiar) values ('azul', 1)
insert into escovasdedente(cor, id_familiar) values ('vermelho', 2)
insert into escovasdedente(cor, id_familiar) values ('amarelo', 3)
insert into escovasdedente(cor, id_familiar) values ('branca', 4)


select * from familia

insert into familia(nome) values ('Murillo');
insert into familia(nome) values ('Julia');
insert into familia(nome) values ('Eduardo');
insert into familia(nome) values ('Edna');

select * from marcaDoAlimento

insert into marcadoalimento(nome_marca) values ('Unilever')

select * from comidasDaDispensa

insert into comidasdadispensa(nome_comida, id_pessoa_que_comeu, id_marca_do_alimento) values('bolacha', 1, 1);
insert into comidasdadispensa(nome_comida, id_pessoa_que_comeu, id_marca_do_alimento) values('torresmo', 2, 1);
insert into comidasdadispensa(nome_comida, id_pessoa_que_comeu, id_marca_do_alimento) values('bolo', 2, 1);

drop table comidasdadispensa

select familia.nome, 
	escovasDeDente.cor as "Usa a escova cor"
	from familia 
	join escovasDeDente on escovasDeDente.id_familiar = familia.id
	
select escovasDeDente.cor as "Cor da escova", familia.nome, comidasDaDispensa.nome_comida, marcaDoAlimento.nome_marca
	from comidasDaDispensa
	join familia on familia.id = comidasDaDispensa.id_pessoa_que_comeu
	join marcaDoAlimento on marcaDoAlimento.id = comidasDaDispensa.id_marca_do_alimento
	join escovasDeDente on escovasDeDente.id_familiar = familia.id
		