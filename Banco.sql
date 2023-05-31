drop database if exists tb_final;
create database if not  exists tb_final;
use tb_final;

create table if not  exists cardapio(
id_cardapio integer not null auto_increment, 
nome varchar(45) not null,
preco decimal(10,2) not null,
tamanho varchar(45) not null,
primary key(id_cardapio)
);

insert into cardapio (nome,preco,tamanho) values("Portuguesa","32.00", "Pequena");
insert into cardapio (nome,preco,tamanho) values("Portuguesa","32.00", "Pequena");
select * from cardapio;
create table if not  exists clientes(
id_cliente integer not null auto_increment, 
nome varchar(45) not null,
telefone varchar(45) not null,
primary key(id_cliente)
);

create table if not  exists pedido(
id_pedido integer not null auto_increment, 
total_preco decimal(10,2) not null,
data_pedido varchar(45) not null,
horario time not null,
desconto decimal(10,2) not null,
id_cliente integer not null,
primary key(id_pedido), 
foreign key(id_cliente) references clientes(id_cliente) 
);

select * from itens_produto;
create table if not  exists itens_produto(
id_cardapio integer not null, 
id_pedido integer not null,
quantidade varchar(45) not null,
foreign key(id_cardapio) references cardapio(id_cardapio),
foreign key(id_pedido) references pedido(id_pedido) 
);

create table if not  exists endereco(
id_endereco integer not null auto_increment, 
rua varchar(45) not null,
bairro varchar(45) not null,
numero varchar(45) not null,
descricao varchar(45) not null,
id_cliente integer not null,
primary key(id_endereco), 
foreign key(id_cliente) references clientes(id_cliente) 
);

create table if not  exists funcionarios(
id_funcionarios integer not null auto_increment, 
login varchar(45) not null,
senha varchar(45) not null,
primary key(id_funcionarios)
);
insert into funcionarios (login,senha) values("admin","admin");