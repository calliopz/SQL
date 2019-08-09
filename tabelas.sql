create database grupositi;

use grupositi;

create table Pais(
id_pais int,
nome varchar(50),
primary key(id_pais)
);

create table Estado(
id_estado int,
nome varchar(50),
id_pais int,
regiao varchar(30),
primary key(id_estado),
foreign key (id_pais) references Pais(id_pais)
);


create table Cidade(
id_cidade int,
nome varchar(50),
id_estado int,
primary key(id_cidade),
foreign key (id_estado) references Estado(id_estado)
);

create table Clientes(
cod_cliente int,
nome varchar(100),
tipo char(1),
id_cidade int,
primary key(cod_cliente),
foreign key (id_cidade) references Cidade(id_cidade)
);

create table Planos(
cod_plano int,
nome varchar(50),
descricao varchar(100),
valor_plano int,
primary key(cod_plano)
);


create table Vendas(
cod_venda int,
cod_plano int,
cod_cliente int,
data_venda date,
valor_venda int,
primary key(cod_venda),
foreign key (cod_plano) references Planos(cod_plano),
foreign key (cod_cliente) references Clientes(cod_cliente)
);

create table Menu(
cod_menu int,
nome varchar(100),
primary key(cod_menu)
);

create table Pageviews(
cod_pageviews int,
url varchar(100),
cod_cliente int,
cod_menu int,
data_acesso date,
primary key(cod_pageviews),
foreign key (cod_cliente) references Clientes(cod_cliente),
foreign key (cod_menu) references Menu(cod_menu)
);




