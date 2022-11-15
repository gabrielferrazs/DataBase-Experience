use ecommerce; 
show tables;

select * from clients;

insert into clients (Fname, Minit, Lname, Adress, CPF)
	values ('Maria', 'M', 'Silva', 'Rua Silva de Prata 29 Carangola - Cidade das Flores', 123456789),
			('Mathues', 'O', 'Pimentel', 'Rua Alameda 289 Centro - Cidade das Flores', 987654321),
            ('Ricardo', 'F', 'Silva', 'Avenida Alameda Vinha 1009 Centro - Cidade das Flores', 45678913),
            ('Julia', 'S', 'França', 'Rua Laranjeiras 861 Centro - Cidade das Flores', 789123456),
            ('Roberta', 'G', 'Assis', 'Avenida Koller 19 Centro - Cidade das Flores', 987612348),
            ('Isabela', 'M', 'Cruz', 'Rua Alameda das Flores 28 Centro - Cidade das Flores', 654789123);
            
select * from product;
            
insert into product (Pname, classification_kids, category, avaliacao, size) values
			('Fone de ouvido', false, 'Eletronico', '4', null),
            ('Barbie Elsa', true, 'Brinquedos', '3', null),
            ('Body Cartnes', true, 'Vestimenta', '5', null),
            ('Microfone Vedo - Youtuber', false, 'Eletronico', '4', null),
            ('Sofa Retratil', false, 'Moveis', '3', '3x57x90'),
            ('Farinha de arroz', false, 'Alimentos', '2', null),
            ('Fire Stick Amazon', false, 'Eletronico', '4', null);
            
select * from orders;            

insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values
			(1, default, 'Compra via App', null, 1),
			(2, default, 'Compra via App', null, null),
			(3, 'Confirmado', null, null, 1),
			(4, default, 'Compra via App', null, null);
            
select * from orders;            

insert into productOrder (idPOproduct, idPOrder, poQuantity, poStatus) values
			(1,1,2,null),
			(2,2,1,null),
            (3,2,1,null);   
            
insert into productStorage (storageLocation, quantity) values
			('Rio de Janeiro', 1000),
            ('Rio de Janeiro', 500),
            ('Sao Paulo', 10),
            ('Sao Paulo', 100),
            ('Brasilia', 60);
   
   
select * from productStorage;

insert into storageLocation (idLproduct, idLstorage, location) values
			(1,2,'RJ'),
            (2,4,'GO');
            
insert into supplier (socialName, CNPJ, contact) values
			('Almeida e Filhos', 12345678910, 21988895412),
            ('Eletronicos Silva', 09876543214, 31965432109),
            ('Eletronicos Junior', 765432098756, 45976543297);
            

insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
			(1,1,500),
            (1,2,400),
            (2,4,633),
            (3,3,5),
            (2,5,10);
            
insert into seller (socialName, absName, CNPJ, CPF, location, contact) values
			('Tech Eletronic', null, 12345678910, null, 'Rio de Janeiro', 21988895412),
			('Botique Dugas', null, null, 12365478910, 'Rio de Janeiro', 21976549870),
			('Kids World', null, 12347657310, null, 'Sao Paulo', 11985865119);
            
insert into productSeller (idPseller, idPproduct, prodQuantity) values
			(1,6,80),
            (2,7,10);
            
select count(*) from clients;
select * from clients c, orders o where c.idclient = idorderclient; 

select Fname, Lname, orderStatus from clients c, orders o where c.idclient = idorderclient;

select concat(Fname, Lname) as Client_Name, idorder, orderStatus from clients c, orders o where c.idclient = idorderclient;

insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values
			(2, default, 'Compra via App', null, 1);

select * from clients c, orders o where c.idclient = idorderclient; 

select count(*) from clients c, orders o 
	where c.idclient = idorderclient
    group by idOrder; 

select * from clients left outer join orders on idClient = idorderclient;

select * from Productorder;
select * from clients c inner join orders o on c.idClient = o.idOrderClient
			inner join productOrder p on p.idPorder = o.idOrder;


select count(*) from clients c inner join orders o on c.idClient = o.idOrderClient
			inner join productOrder p on p.idPorder = o.idOrder
            group by idclient;
            

select fname, c.idclient, count(*) as NumberOFOrders from clients c inner join orders o on c.idClient = o.idOrderClient
			inner join productOrder p on p.idPorder = o.idOrder
            group by idorder;


	
			
            
    