create database exercicios;

use exercicios;

create table cliente(
idCliente int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
telefoneFixo char(20),
telefoneCelular char(20)
);

insert into cliente values
(null, 'Ricardo', 'will',1144878213, '11944878214'),
(null, 'Arthur', 'will',11444448213, '119999978214');

create table endereco (
idEndereco int primary key auto_increment,
cep char(8),
cidade varchar(45),
bairro varchar(45),
rua varchar(45),
numero int,
complemento varchar(45),
fkCliente int,
constraint fkC foreign key (fkCliente)
	references cliente(idCliente)
);

insert into endereco values
(null, '99999999', 'Ribeirao', 'Santa', 'Gago',45,null, 1),
(null, '88899999', 'Santo andre', 'Luzia', 'Coutinho',85,null, 1);

select * from cliente join endereco
on fkCliente = idCliente;

create table pet (
idPet int auto_increment,
fkCliente int,
constraint fkCli foreign key (fkCliente)
	references cliente(idCliente),
animal varchar(45),
nome varchar(45),
dtNasc date,
primary key(idPet, fkCliente)
)auto_increment = 101;

insert into pet values
(null, 1 , 'Gato', 'Ruby', '2002-04-22'),
(null, 1 , 'Passarinho', 'James', '2019-09-29'),
(null, 1 , 'jacare', 'Lbron', '2022-05-22');

insert into pet values
(null, 2 , 'Gato', 'Mrs. Joauim', '2023-10-21');

select * from cliente;
select * from endereco;
select * from pet;

alter table cliente modify column nome varchar(60);

select * from pet
where animal = 'Gato';

select nome, dtNasc from pet;

select * from pet order by nome;

select * from endereco join cliente
on fkCliente = idCliente order by bairro desc;

select * from pet
where nome like 'R%';

select * from cliente
where sobrenome = 'will';

update cliente set telefoneFixo = '114444441111'
where idCliente = 1;

select * from cliente;

select * from pet as p join cliente as  c
on p.fkCliente = idCliente;

select * from pet as p join cliente as  c
on p.fkCliente = idCliente 
where idCliente = 1;

delete from pet where idPet = 101;

select * from pet;

drop table pet;

drop table cliente;

drop table endereco;

-- Exercicio 2

create table pessoa (
idPessoa int primary key auto_increment,
nome varchar(45),
dtNasc date,
profissao varchar(45)
);

create table gasto (
idGasto int primary key auto_increment,
data date,
valor float,
descricao varchar(200),
fkPessoa int,
constraint fkP foreign key (fkPessoa)
	references pessoa(idPessoa)
);

insert into pessoa values 
(null, 'Igor', '2005-05-31', 'Desenvolvedor Front-end'),
(null, 'Gabriel', '2004-04-30', 'Mecanico'),
(null, 'Marcio' , '1998-07-20', 'Empresario');

insert into gasto values
(null, '2023-05-20', 2000.2 , 'Compra do pc gamer', 1),
(null, '2023-10-20', 1000 , 'Ingresso de show', 1),
(null, '2023-02-25', 20000.100 , 'carro novo', 2),
(null, '2023-02-18', 300000.200 , 'Compra da casa nova', 3);

select * from pessoa;

select * from gasto;

select * from pessoa
where profissao = 'Mecanico';

select * from gasto join pessoa
on fkPessoa = idPessoa;


create database praticaFuncionario;

use praticaFuncionario;

create table setor (
idSetor int primary key auto_increment,
nomeSetor varchar(45),
numeroAndar int
);
insert into setor values
(null, 'Compras', 2),
(null,'Destribuição', 4);

create table funcionario (
idFuncionario int primary key auto_increment,
nome varchar(45),
telefone char(11),
salario float,
fkSetor int,
constraint fkS foreign key (fkSetor)
	references setor(idSetor)
);

insert into funcionario values
(null, 'James', '11944878214', 1.300, 1),
(null, 'Lebron', '11999878214', 2.300, 1),
(null, 'Kevin', '11922228214', 3.100, 2);

create table acompanhante (
idAcompanhante int auto_increment,
fkFuncionario int,
constraint fkF foreign key (fkFuncionario)
	references funcionario(idFuncionario),
tipoDeRelacao varchar(45),
dtNasc date,
primary key(idAcompanhante, fkFuncionario)
);

insert into acompanhante values
(null, 1, 'Namorada', '2002-05-31'),
(null, 2, 'Primo', '2000-10-21'),
(null, 3, 'Mãe', '2000-12-12');

select * from funcionario join setor
on fkSetor = idSetor;

select * from funcionario join setor
on fkSetor = idSetor 
where nomeSetor = 'Compras';

select * from acompanhante join funcionario
on fkFuncionario = idFuncionario;

select * from acompanhante join funcionario
on fkFuncionario = idFuncionario
where idFuncionario = 1;

select * from funcionario join setor
on fkSetor = idSetor 
join acompanhante
on fkFuncionario = idFuncionario;


create database treinador;

use treinador;

create table treinador (
idTreinador int primary key auto_increment,
nome varchar(45),
telefone char(11),
email varchar(45),
fkTreinadorExperiente int,
	constraint fkTX foreign key (fkTreinadorExperiente)
		references treinador(idTreinador)
)auto_increment = 10;

insert into treinador values
(null, 'Michael', '11944878214', 'michael@gmail.com', null);

insert into treinador values
(null, 'Kauton', '11922878214', 'kauton@gmail.com', 10);

insert into treinador values
(null, 'Donic', '11977878214', 'donic@gmail.com', 11);

create table nadador (
idNadador int auto_increment,
nome varchar(45),
estadoDeOrigem varchar(45),
dtNasc date,
fkTreinador int,
	constraint fkT foreign key (fkTreinador)
		references treinador(idTreinador),
primary key(idNadador, fkTreinador)
) auto_increment = 100;

insert into nadador values
(null, 'Lebron', 'California', '2002-05-21', 10),
(null, 'Curry', 'Minas Gerais', '2000-08-21', 10),
(null, 'lillard', 'California', '2005-05-12', 11),
(null, 'luka', 'California', '2002-08-24', 12);

select * from treinador;

select * from nadador;

select * from treinador join nadador
on fkTreinador = idTreinador;

select * from treinador join nadador
on fkTreinador = idTreinador
where idTreinador = 11;

select * from treinador as t  join treinador as e
on t.fkTreinadorExperiente = e.idTreinador;

select * from treinador as t  join treinador as e
on t.fkTreinadorExperiente = e.idTreinador
where t.fkTreinadorExperiente = 10;

select * from nadador join treinador as t
on fkTreinador = idTreinador
join treinador as e
on e.fkTreinadorExperiente = t.idTreinador
;

select * from nadador join treinador as t
on fkTreinador = idTreinador
join treinador as e
on e.fkTreinadorExperiente = t.idTreinador
where e.idTreinador = 11;


