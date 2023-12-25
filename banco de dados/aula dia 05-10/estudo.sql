create database alunoProjeto;
use alunoProjeto;

create table projeto (
idProjeto int primary key auto_increment,
nome varchar(45),
descricao varchar(400)
);
insert into projeto values
(null, 'Site da sptech', 'construcao do site da sptech'),
(null, 'Site da netflix', 'construcao do site da netflix'),
(null, 'Banco da amazon', 'construcao do bancod e dados da amazon');

create table aluno (
ra char(9) primary key,
nome varchar(45),
telefone char(15),
fkProjeto int,
constraint fkP foreign key (fkProjeto)
	references projeto(idProjeto),
fkRepresentante char(9),
constraint fkRep foreign key (fkRepresentante)
	references aluno(ra)
);
insert into aluno values
('01232107', 'Igor Anthony', '11944878214', 1, null),
('01232188', 'Nayara Anthony', '11944878214', 1, '01232107'),
('01232177', 'Arthur', '11944878214', 2, '01232188'),
('01232166', 'Arthur lins', '11944878214', 3, '01232107');

create table acompanhante (
idAcompanhante int auto_increment,
nome varchar(45),
tipoDeRelacao varchar(45),
fkAluno char(9),
constraint fkA foreign key (fkAluno)
	references aluno(ra),
primary key (idAcompanhante, fkAluno)
);
insert into acompanhante values
(null, 'niara', 'namorada', '01232107'),
(null, 'gomes', 'primo', '01232188'),
(null, 'Jordan', 'primo', '01232177'),
(null, 'Luis', 'tio', '01232166'),
(null, 'Carlos', 'tio', '01232107'),
(null, 'Eduardo', 'tio', '01232107'),
(null, 'gustavo', 'tio', '01232107');

select * from projeto;

select * from aluno;

select * from acompanhante;

select * from aluno as a join aluno as r
on a.fkRepresentante = r.ra;

select * from aluno join projeto
on fkProjeto = idProjeto;

select * from acompanhante join aluno
on fkAluno = ra;

select * from aluno join projeto
on fkProjeto = idProjeto
where idProjeto = 1;

select * from acompanhante join aluno
on fkAluno = ra
join projeto
on fkProjeto = idProjeto;

create database camapanha;
use camapanha;

create table organizador(
idOrganizador int primary key auto_increment,
nome varchar(45),
endereco varchar(45),
email varchar(50),
fKExperiente int ,
constraint fkE foreign key (fKExperiente)
	references organizador(idOrganizador),
)auto_increment = 30;

insert into organizador values
(null, 'Jesus', 'Rua das orquideas', 'jesus@jesus', null),
(null, 'Michael', 'Rua das flores', 'michael@jesus', 1),
(null, 'Lebron', 'Rua das belas', 'lebron@jesus', 1),
(null, 'Gianis', 'Rua das meigas', 'gianis@jesus', 2),
(null, 'madruga', 'Rua das orquideas', 'mada@jesus', 3);

create table campanha