# CREATing A TABLE
#CREATE DATABASE customers ;
#SHOW  databases ;
# CREATE TABLE in data base system
#use customers ;
#create  table customer_info(id int (10) , first_name varchar (10) ,last_name varchar (10)) ;
#show tables ;
#select * from customer_info ;
#Insert into customer_info (id, first_name ,last_name) values (01 ,'Vk' , 'KV') ;
#Insert into customer_info (id, first_name ,last_name) values (02 ,'Vyom' , 'Kajal') ;

#drop table customer_info  ;
#show tables



#DESCRIBE customer_info ;
#select * from customer_info ;
# describe Table_name



#-- disable safe update mode
SET SQL_SAFE_UPDATES=0;


drop table employees ;
create table employees(id int (10) , first_name varchar (10) ,last_name varchar (10) ,salary int (10));
insert into employees(id , first_name ,last_name,salary) values (1 ,'Steven' , 'king' , 10000) ;
insert into employees(id , first_name ,last_name,salary) values (2 ,'Edwin' , 'Thomas' , 20000) ;
insert into employees(id , first_name ,last_name,salary) values (03 ,'Harry' , 'Poter' , 40000) ;
insert into employees(id , first_name ,last_name,salary) values (4 ,'Edwin' , 'Poter' , 50000) ;
insert into employees(id , first_name ,last_name,salary) values (5 ,'Piter' , 'parker' , 25000) ;
insert into employees(id , first_name ,last_name,salary) values (6 ,'medusa' , 'witch' , 12000) ;


UPDATE employees SET last_name = 'hathway' WHERE id = 2 ; 
select * from employees ;

# Use of delete command
#delete from employees Where id in(1,4);-- 
select * from employees ;

select * from employees where salary >10000 ;

select *  from employees where salary >10000 and salary <20000 ;
select * from  employees where first_name = 'Steven' or first_name ='Edwin' ; 
select * from employees where first_name = 'Edwin' and salary >10000;
select * from employees where first_name = 'Steven' and salary!= 11000;
select * from employees where first_name ='Edwin'and salary >1000;
select * from employees where first_name = 'Edwin' and salary >10000;

select * from employees where last_name = 'witch'  and salary >2000 ;
select * from employees where first_name = 'Harry' and last_name = 'Poter' ;
select * from employees where first_name = 'Harry'  or last_name ='witch' ;

SELECT * FROM employees where salary between 10000 and 30000 ;
select * from employees where first_name  like 'Steven ' ;
select * from employees where last_name  like 'porter'  ;
select * from  employees where salary in (10000,20000,50000) ;#represent the values where exactly matchin g with givenin (breakets ) ;
select * from employees where salary in (10000, 30000,50000,20000,25000)  ;
select distinct salary from employees ;
select distinct first_name from employees ;

select * from employees ;
select * from employees where  salary between 20000 and 50000 ;
# use of like operator
select * from employees where last_name like "h%" ;
select * from employees where salary in (10000,30000,50000) ;
select distinct first_name from employees


