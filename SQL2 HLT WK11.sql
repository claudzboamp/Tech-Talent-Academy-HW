show databases;
use customer;
CREATE TABLE Customer_details(
Customer_id int not null, 
FirstName varchar (30) not null,
LastName varchar (30) not null, 
Ethnicity varchar(30) not null, 
Age int not null, 
primary key (Customer_id), 
unique (LastName)
);
explain Customer_details; 
insert into Customer_details (Customer_id, FirstName, LastName, Ethnicity,Age)
values ('1', 'John', 'Smith', 'White British', '30'), 
('2', 'Kevin', 'Williams', 'White British', '35'),
('3', 'Amy', 'Powers', 'Black British', '29'), 
('4', 'Linda', 'Asante', 'Black African', '19'), 
('5', 'Eugene', 'Yeboah', 'Black African', '26'), 
('6', 'Zohra', 'Shah', 'Asian British', '29'), 
('7', 'Agnes', 'Amoako', 'Black African', '60'),
('8', 'Thomas', 'Chung', 'Chinese', '65'), 
('9', 'Mohammed', 'Isalm', 'Pakistani', '55'), 
(10, 'Michael', 'Addison', 'Black British', '33');

select *from Customer_details; 

show databases; 
create database Customer2;

CREATE TABLE Customer2_details(
Customer2_id int not null,
Gender varchar (30) not null,
ProductName varchar (30) not null, 
ProductPrice int not null, 
OrderID int not null, 
primary key (Customer2_id), 
unique (OrderID)
); 

insert into Customer2_details (Customer_id, Gender, ProductName, ProductPrice, OrderID)
values ('1','Male','BlueShirt','25','124'), 
('2','Male','BlueShirt','25','127'),
('3', 'Female','PinkShirt', '28', '130'), 
('4','Female','RoseGoldShirt','29','126'),
('5', 'Male','Blueshirt','25','128'),
('6','Female','Pinkshirt', '28', '136'), 
('7','Female','RoseGoldshirt','29','142'),
('8','Male','Blackshirt','30','129'), 
('9', 'Male', 'Blackshirt', '30', '122'), 
(10, 'Male', 'Blackshirt', '30', '132');
select *from Customer2_details; 

use customer
select *from Customer_details;

UPDATE Customer_details 
set Ethnicity = 'Hispanic'
WHERE Customer_id = 3;

select *from Customer_details;
DELETE from Customer_details
WHERE Customer_id = '1'; 
select *from Customer_details;



SELECT Customer_details.Customer_id
From Customer_details
Inner JOIN Customer2_details
ON Customer_details.Customer_id = Customer2_details.Customer2_id

show databases; 
select *from Customer2_details, Customer2_id
where Customer2_details = Customer2_id and ProductName ='BlackShirt';



