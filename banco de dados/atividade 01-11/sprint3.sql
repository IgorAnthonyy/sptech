create database exSpt3;
use exSpt3;


create table cliente (
idCliente int primary key auto_increment,
nome varchar(45),
email varchar(45),
endereco varchar(100),
fkIndicado int,
foreign key (fkIndicado)
	references cliente(idCliente)
);

insert into cliente values
(null, 'Arnaldo', 'arnaldo@gmail.com', 'rua gago coutinho', null),
(null, 'Marques', 'marques@gmail.com', 'rua jose coutinho', 1),
(null, 'julio', 'julio@gmail.com', 'rua almeido coutinho', 2),
(null, 'Mends', 'mends@gmail.com', 'rua lumbrigo coutinho', 2);

create table venda (
idVenda int auto_increment,
totalVenda decimal(10,2),
data date,
fkCliente int,
foreign key (fkCliente)
	references cliente(idCliente),
primary key(idVenda, fkCliente)
);

insert into venda values
(null, 200.22, '2023-09-22', 1),
(null, 300.22, '2023-09-22', 2),
(null, 400.22, '2023-11-22', 1),
(null, 100.22, '2023-01-22', 4),
(null, 400.22, '2023-03-22', 2),
(null, 200.22, '2023-12-22', 3);

create table produto(
idProduto int auto_increment primary key,
nome varchar(45),
descricao varchar(45),
preco decimal(10,2)
);

insert into produto value
(null, 'celular', 'celular da apple', 200.00),
(null, 'computador', 'computador dell', 400.00),
(null, 'mesa', 'meda dos ercenarios', 600.00);

create table itemVenda (
fkProduto int,
foreign key (fkProduto)
	references produto(idProduto),
fkVenda int,
foreign key (fkVenda)
	references venda(idVenda),
primary key(fkProduto, fkVenda)
);

insert into itemVenda values
(1,1),
(1,2),
(2,2),
(2,1);

select * from itemVenda;
select * from produto;
select * from cliente;
select * from venda;

select * from venda join cliente
on fkCliente = idCliente;

select * from venda join cliente
on fkCliente = idCliente
where idCliente = 1;

select * from cliente as cliente
join cliente as indicador
on indicador.fkIndicado = cliente.idCliente;

select * from cliente as cliente
join cliente as indicador
on indicador.fkIndicado = cliente.idCliente
where indicador.fkIndicado = 2;

