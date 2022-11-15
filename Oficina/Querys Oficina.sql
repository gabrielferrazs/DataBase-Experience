use oficina;
select * from clients;

insert into clients (Fname, Lname, CPF) values 
			('Maria', 'Rodrigues Silva', 123456789),
			('Mathues', 'Braga Pimentel', 987654321),
            ('Ricardo', 'Ferraz Silva', 45678913);

select * from vehicles;

insert into vehicles (Placa) values 
			('QQM-7831'),
			('NXX-8712'),
            ('PUL-4A58');
            
insert into mechanics (Fname, Lname, Especialidade, endereco) values 
			('Pedro', 'Silva', 'Funileiro' ,'Rua Silva de Prata 29 Carangola - Cidade das Flores'),
			('Mathues', 'Cunha', 'Pintor' ,'Rua Alameda 289 Centro - Cidade das Flores'),
			('Flavio', 'Braga', 'Martelinho de Ouro' ,'Rua Primeiro de Junho 22 Centro - Cidade das Flores');

select * from mechanics;
	
    
insert into piece (Pname, Quantidade, preco) values 
			('Parachoque', 100, 399),
			('Retrovisor', 54, 169),
			('Tinta Preta', 10, 39),
			('Calota', 0, 99),
			('Parabrisa', 21, 1050);
            
select * from piece;


insert into Service (Sname, preco) values 
			('Pintura', 190),
            ('Troca de Peça', 120),
            ('Martelinho', 295);

select * from Service;

insert into Team (Tname) values 
			('Pintura'),
            ('Troca de Peça'),
            ('Martelinho');
            
select * from Team;

insert into teamMechanics (idTeamMechanichs, idMMechanichs) values 
			(1, 1),
            (2, 2),
            (2, 3);

select * from teamMechanics;


insert into OSService (idOSVehicles, idOSClient, idOSTeam, idOSService, idOSPiece, TempoEntrega, Valor, Numero, OSStatus) values 
			(1, 1, 1, 2, 3, '2022-05-20', 760, 1, 'Em Conserto'),
            (2, 3, 2, 1, 1, '2022-06-10', 2300, 2, 'Finalizado'),
            (3, 2, 3, 3, 4, '2022-05-29', 1590, 3, 'Em Conserto');

select * from OSService;

select * from osservice os, vehicles v
	where os.idOSVehicles = v.idVehicles; 
    
    
select * from osservice os, vehicles v, Team t, teamMechanics tm
	where os.idOSVehicles = v.idVehicles;
    
select * from osservice where osstatus = 'Finalizado';

select count(*) from clients;
	 
select * from vehicles order by placa;

select * from clients c inner join vehicles v order by placa, idVehicles;
