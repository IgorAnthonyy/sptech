create database contaXcliente;

use contaXcliente;

create table cliente(
	idCliente int primary key auto_increment,
    nome varchar(75),
    CPF char(11),
    numeroDeTelefone char(11));
    
create table conta(
	idConta int primary key auto_increment,
    contaCorrente char(9),
    email varchar(75),
    senha varchar(20),
    saldo float,
    agencia int(4));
    
describe conta;

insert into cliente values
	(null ,'Igor', '13287754687', '11965321477'),
    (null ,'Kauã', '23458799514', '11965487795'),
    (null ,'Gustavo', '42624066870', '11962493309');
    
    select * from cliente;
    
    insert into conta values
	(null, '336452098' ,'igor.maciel@sptech.school', 'iguinho123', 12,'5212'),
    (null , '254638752', 'kaua.vidal@sptech.school', 'kaua3984', 5000, '2352'),
    (null , '322668457', 'gustavo.pardinho@sptech.school', 'viana2200', 200, '7845');
    
select * from conta;

alter table conta add column fkCliente int;

alter table conta add constraint fkClie foreign key (fkCliente)
	references cliente(idCliente);
    
update conta set fkCliente = 2
	where idConta = 2;
    
update conta set fkCliente = 3
	where idConta = 3;
    
update conta set fkCliente = 1
	where idConta = 1;
    
SELECT * FROM cliente JOIN conta
	ON fkCliente = idCliente;
    
-- trabalho feito por Igor Anthony, Kaua Vidal e Gustavo Viana