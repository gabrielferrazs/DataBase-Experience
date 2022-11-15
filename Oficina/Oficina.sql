drop database oficina;
create database oficina;
use oficina; 

-- criar tabela cliente
create table clients (
	idClient int auto_increment primary key, 
    Fname varchar(20),
    Lname varchar(20),
    CPF char(11) not null,
    constraint unique_cpf_unique unique (CPF)
);

create table vehicles (
	idVehicles int auto_increment primary key, 
    Placa varchar(8) not null,
    constraint unique_placa_unique unique (placa)
    );
    
create table mechanics (
	idMechanics int auto_increment primary key, 
    Fname varchar(20),
    Lname varchar(20),
    Especialidade varchar(40) not null,
    endereco varchar(70)
    );
    
create table piece (
	idPiece int auto_increment primary key, 
    Pname varchar(30),
    Quantidade int,
    preco int
    );
    
create table Service (
	idService int auto_increment primary key, 
    Sname varchar(30),
    preco int
    );
    
create table Team (
	idTeam int auto_increment primary key, 
    Tname varchar(30)
    );
    
create table teamMechanics (
	idTeamMechanichs int,
    idMMechanichs int,
	primary key (idTeamMechanichs, idMMechanichs),
    constraint fk_teamMechanics foreign key (idTeamMechanichs) references team (idTeam),
	constraint fk_mechanics foreign key (idMMechanichs) references mechanics (idMechanics)
    );

create table OSService (
	idOSVehicles int,
    idOSClient int,
    idOSTeam int, 
    idOSService int, 
    idOSPiece int, 
    TempoEntrega date,
    Valor int,
    Numero int,
    OSStatus enum ('Em Conserto', 'Finalizado'),
	primary key (idOSVehicles, idOSClient, idOSTeam, idOSService, idOSPiece),
    constraint fk_os_vehicles foreign key (idOSVehicles) references vehicles (idVehicles),
	constraint fk_os_client foreign key (idOSClient) references clients (idClient),
	constraint fk_os_team foreign key (idOSTeam) references team (idTeam),
    constraint fk_os_service foreign key (idOSService) references service (idService),
    constraint fk_os_piece foreign key (idOSPiece) references piece (idPiece)
    );
    
    
    use oficina;
    show tables;
select * from clients;

