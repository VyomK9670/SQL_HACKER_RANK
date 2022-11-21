# HOW MANY DATA ALREADY PRESENT  ?
SHOW databases ;
USE WORLD ;
SHOW TABLES ;
SELECT * FROM CITY ;
#SELECT * FROM country ;
create database customers;
use customers; 


# create table in database
create table customers_info(unique_id integer , first_name varchar(25) , last_name varchar(25)) ;
show   tables ;

select * from customers_info ;
insert into customers_info(unique_id ,first_name,last_name) values(1,"vyom","Rudra") ;
select * from customers_info ;
drop table customers_info ;
show tables ;
drop database customers ;








