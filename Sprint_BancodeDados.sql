USE Sprint;

Create table empresa(
id int primary key auto_increment,
CNPJ char (18) not null,
nomeDaEmpresa varchar (50) not null,
email varchar (30) not null,
numero char (11) not null
);

create table cadastro(
id int primary key auto_increment,
email varchar (20) not null,
senha char(8) not null
);

create table instalacao(
id int primary key auto_increment,
CEP char(9) not null,
tamanhoLocal varchar(20) not null,
tiposVinhos varchar(20) not null
);

create table vinho(
id int primary key auto_increment,
tempIdeal varchar(10) not null
);

create table sensor(
id int primary key auto_increment,
nome varchar(20) not null,
localizacao varchar(20) not null
);

create table dadoSensor(
id int primary key auto_increment,
temperatura varchar(10) not null,
dtAtual datetime default current_timestamp
);

insert into empresa (CNPJ, nomeDaEmpresa, email, numero) values
('00.000.000/0000-00','Vinhos Celestiais','vinhoscelestais@gmail.com','994185602'),
('11.111.111/1111-11','Adega Aurora','adega_aurora@gmail.com','935790264'),
('22.222.222/2222-22','Vinícola Brisa do Vale','vinicola_brisadovale@gmail.com','961978435'),
('33.333.333/3333-33','Bacos Vinhos e Vinhedos','bacosvinhos_vinhedo@gmail.com','928791304');

select * from empresa;
truncate table empresa;
drop table empresa;

insert into cadastro (email, senha) values
('vinhoscelestais@gmail.com', '27564783'),
('adegaaurora@gmail.com', '98576857'),
('brisadovale@gmail.com', '63547765'),
('bacovinhos@gmail.com', '2382908');

select * from cadastro;
truncate table cadastro;
drop table cadastro;

insert into instalacao (CEP, tamanhoLocal, tiposVinhos) values
('08761-230', '347 metros²', 'tinto'),
('54687-401', '220 metros²', 'branco'),
('08978-320', '350 metros²', 'rose'),
('07041-708', '550 metros²', 'tinto');

select * from instalacao;
truncate instalacao;
drop table instalacao;

insert into vinho(tempIdeal) values
('17°C'),
('15°C'),
('13°C'),
('14°C');

select * from vinho;
truncate table vinho;
drop table vinho;

insert into sensor(nome, localizacao) values
('sensor1','zona1'),
('sensor7','zona4'),
('sensor5','zona6'),
('sensor13','zona10');

select * from sensor;
truncate table sensor;
drop table sensor;

insert into dadoSensor(temperatura) values
('17°C'),
('15°C'),
('13°C'),
('14°C');

select * from dadoSensor;
truncate table dadoSensor;
drop table dadoSensor;







