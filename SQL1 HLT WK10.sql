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
explain Customer_details





