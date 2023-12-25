create database Sprint2;

use Sprint2;

create table Atleta (
idAtleta int primary key auto_increment,
nome varchar(40),
modalidade varchar(40),
qtdMedalhas int
);

insert into Atleta values 
(null, 'Michael', 'Basquete', 4),
(null, 'Jordan', 'Basquete', 9),
(null, 'Neymar', 'Futebol', 2),
(null, 'Ronaldinho', 'Futebol', 19),
(null, 'Felps', 'Natação', 19),
(null, 'James', 'Natação', 9);

select * from pais;

create table Pais (
idPais int primary key auto_increment,
nome varchar(30),
capital varchar(40)
);

insert into pais values
(null, 'Estados Unidos', 'Washington D.C.'),
(null, 'Brasil', 'Brasilia'),
(null, 'Inglaterra', 'Londres'),
(null, 'Argentina', 'Buenos Aires');

alter table atleta add column fkPais int;
alter table atleta add constraint fkPa
foreign key(fkPais)references pais(idPais);

update atleta set fkPais = 1
where idAtleta = 2;
update atleta set fkPais = 2
where idAtleta = 1;
update atleta set fkPais = 3
where idAtleta = 3;
update atleta set fkPais = 4
where idAtleta = 4;
update atleta set fkPais = 4
where idAtleta = 5;
update atleta set fkPais = 2
where idAtleta = 6;

select * from  pais join atleta
on fkPais = idPais;

select atleta.nome, pais.nome from
pais  join atleta on idPais = fkPais;

select atleta.nome AS NomeAtleta, pais.nome AS NomePaís from
pais join atleta on idPais = fkPais
where pais.capital = 'Londres';

create table musica (
idMusica int primary key auto_increment,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

insert into musica values
(null, 'ai calica', 'Poze do rodo', 'Funk'),
(null, 'pitbull', 'poze do rodo', 'Funk'),
(null, 'trap de cria', 'kyan', 'Trap'),
(null, 'trap de cria 2', 'kyan', 'Trap');

create table album (
idAlbum int primary key auto_increment,
nome varchar(40),
tipo varchar(15),
constraint chkTipo CHECK (tipo in('Digital', 'Fisico')),
dtlancamento date
);

insert into album values
(null, 'Rj de cria', 'Digital', '2002-01-12'),
(null, 'Meninos de Sp', 'Fisico', '2022-09-20');

alter table musica add column fkAlbum int;
alter table musica add constraint fkAl
foreign key (fkAlbum) references album(idAlbum);

update musica set fkAlbum = 1
where idMusica = 1;
update musica set fkAlbum = 2
where idMusica = 2;
update musica set fkAlbum = 2
where idMusica = 3;
update musica set fkAlbum = 1
where idMusica = 4;

select * from musica;
select * from album;

select * from album join musica
on fkAlbum = idAlbum;
select musica.titulo as TituloDaMusica, album.nome AS NomeDoAlbum from album join musica
on fkAlbum = idAlbum;

select * from album join musica
on fkAlbum = idAlbum
where tipo = 'fisico';