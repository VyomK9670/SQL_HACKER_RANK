create database customers ; 
show databases ;
use customers;
# creating cutomers infro table 
create table cutomers_info(	id 			integer auto_increment ,
							First_name 	varchar(25) ,
                            last_name 	varchar(25),
                            salary 		integer , 
                            primary key (id));
## inserting value on to the columns
insert into cutomers_info(First_name ,last_name,salary ) values 
							("vyom", "k1",10),
							("vyom1","k2",100),
							("vyom2","k3",101),
							("vyom3","k4",null)  ;
select * from cutomers_info;

# SQL Null Values 
select * from cutomers_info where salary is null ;
select * from cutomers_info where salary is not null ;
# SQL update Statements 
update cutomers_info set salary = 10000 where id = 5;
select * from cutomers_info;     # update the existing valeu nside the columns
# sql  delate statement 
delete from cutomers_info where id = 5 ;    # delete the existing commands
select * from cutomers_info; 
# SQl alter table 
### Add coumn in existing table
alter table cutomers_info add new_cumn_name varchar(25)  ;
update  cutomers_info set  new_cumn_name ="vyom@"where id = 1 ;
update  cutomers_info set  new_cumn_name ="vyom@2"where id = 2 ;
update  cutomers_info set  new_cumn_name ="vyom@3"where id = 3 ;
update  cutomers_info set  new_cumn_name ="vyom@4"where id = 4 ;
update  cutomers_info set  new_cumn_name ="vyom@5"where id = 5 ;

alter table cutomers_info add dob date;

select * from cutomers_info; 
alter table cutomers_info modify dob year ;
select * from cutomers_info; 
desc cutomers_info ;    # it will show the existing type of dtataset
update cutomers_info set dob = 1950 where id  = 1 ;
update cutomers_info set dob = 1995 where id  = 2 ;
update cutomers_info set dob = 1954 where id = 3 ;
update cutomers_info set dob =2000 where id = 4 ;
select * from cutomers_info ;    
# delete statements 
alter table cutomers_info drop column  new_cumn_name ;    # Deleteing the table
select * from cutomers_info ;


