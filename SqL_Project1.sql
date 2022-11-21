# Project for Banking
# TO create data base
select * from bank_details ;
create database bank ;
use bank ;
create table bank_details (Product varchar(10) , Quantity int , Price real ,purchase_cost float ,estimated_sale_price float) ;
describe bank_details ;
#insert into bank_details values ( 'PayCard' , 3 , 330,8008 ,9000) ;
#insert into bank_details values ( 'PayPoints' , 4 , 220,8000 ,6800) ;
alter table bank_details add column (Geolocation varchar(20)) ; 
select Geolocation from bank_details where Product = 'PayCard' ; 
select char_length(Product) from bank_details where Product = 'PayCard' ;

alter table bank_details modify Product varchar(10) ; 
alter table bank_details modify Product varchar(9) ;
select * from  bank_details;
create table bank_holidays ( Holiday date , Start_time datetime ,end_time timestamp ) ; 
select * from  bank_holidays ; 
describe bank_holidays ; 
select * from  bank_holidays ; 
insert into bank_holidays values (current_date() ,current_date() ,current_date()) ;

update bank_holidays set Holiday = date_add(Holiday ,interval 99 day) ;

update bank_holidays set end_time  = utc_timestamp() ;
Select PRODUCT as NEW_PRODUCT from bank_details;
Select * from Bank_details limit 1 ;
select substr(Geolocation , 1 , 5 ) FROM Bank_details ;

select * from  bank_details ; 
