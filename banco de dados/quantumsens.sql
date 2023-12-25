create database QuantumSens;

use QuantumSens;


create table dadosEmpresa(
idEmpresa int primary key auto_increment,
nomeEmpresa varchar(50) not null,
senha varchar(18) not null,
email varchar (30) not null,
planoAtivo varchar(7) not null,
constraint chkPlanoAtivo check(planoAtivo in('Ativo', 'Inativo')),
qtdEstufas int,
plano varchar(15),
constraint chkPlano check(plano in('QuantumStandard', 'QuantumPremium'))
);

create table identificacao(
idSensor int primary key auto_increment,
empresa varchar(40));

create table sensores(
idAtualuzacao int primary key auto_increment,
idSensor int,
data DATE,
horario CHAR(5),
temperaturaC float,
umidade float
);


