create database pesquisaInovacao;
use pesquisaInovacao;

create table grupo (
	idGrupo int primary key auto_increment,
    nomeGrupo varchar (45),
    descricao varchar (45)
);
insert into grupo values 
	(null, 'microsoft', 'projeto de cascatas'),
    (null, 'google', 'aba de pesquisa'),
    (null, 'edge', 'historico de busca');

create table aluno (
	ra char (8) primary key,
    nome varchar (45),
    email varchar (45),
    fkGrupo int,
    foreign key (fkGrupo) references grupo (idGrupo)
);
insert into aluno values 
	('01232022', 'Meikod', 'meikod@sptech.school', 1),
    ('01232044', 'Manomax', 'manomax@sptech.school', 2),
    ('01232077', 'gil cebola', 'gil@sptech.school', 3);


create table professor (
	idProfessor int primary key auto_increment,
	nome varchar (45),
    disciplina varchar(45)
)auto_increment = 10000;
insert into professor values 
	(null, 'Marcela', 'Socio emocional'),
	(null, 'Betina', 'Algoritimo'),
	(null, 'JP', 'banco de dados');
    

create table avaliacao (
	idAvaliacao int primary key auto_increment,
    fkProfessorAvali int,
    fkGrupoAvali int,
    foreign key (fkProfessorAvali) references professor (idProfessor),
    foreign key (fkGrupoAvali) references grupo (idGrupo),
    dtHorario datetime,
    nota float
);
insert into avaliacao values 
	(null, 10001, 1, '2023-10-09 17:00:00', 9),
    (null, 10001, 3, '2023-10-10 17:00:00', 8.2),
    (null, 10002, 2, '2023-10-11 17:00:00', 7);

select * from aluno;
select * from grupo;
select * from professor;
select * from avaliacao;

select * from grupo join aluno on fkGrupo = idGrupo;

select * from grupo 
	join aluno 
    on fkGrupo = idGrupo
    where idGrupo = 1;

select avg(nota) from avaliacao;
select min(nota) from avaliacao;
select max(nota) from avaliacao;
select sum(nota) from avaliacao;

select professor.*, grupo.*, avaliacao.dtHorario  from aluno 
	join grupo on fkGrupo = idGrupo
    join avaliacao on fkGrupoAvali = idGrupo
    join professor on fkProfessorAvali = idProfessor;
    
select professor.*, grupo.*, avaliacao.dtHorario  from aluno 
	join grupo on fkGrupo = idGrupo
    join avaliacao on fkGrupoAvali = idGrupo
    join professor on fkProfessorAvali = idProfessor
    where idGrupo = 2;

select grupo.nomeGrupo from grupo
    join avaliacao on fkGrupoAvali = idGrupo
    join professor on fkProfessorAvali = idProfessor
    where professor.idProfessor = 10001;
    
select count(distinct nota) from avaliacao;

select professor.nome, avg(nota), sum(nota) from professor
	join avaliacao on fkProfessorAvali = idProfessor
    group by professor.nome;
    
select grupo.nomeGrupo, avg(nota), sum(nota) from grupo
	join avaliacao on fkGrupoAvali = idGrupo
    group by nomeGrupo;
    
select professor.nome, min(nota), max(nota) from professor
	join avaliacao on fkProfessorAvali = idProfessor
    group by professor.nome;
    
select grupo.nomeGrupo, min(nota), max(nota) from grupo
	join avaliacao on fkGrupoAvali = idGrupo
    group by nomeGrupo;

