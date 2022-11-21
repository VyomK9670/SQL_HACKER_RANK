## DDL Data defination Language deal with structure of data
show databases ;
drop table employes ;
create table employes( emp_id int not null , first_name varchar(20) , Lastname varchar(20) , salary int, primary key(emp_id) ) ;
alter table employes add column contact int;
alter table employes rename column contact to jobcode ;
#  drop table employes ; 											# To drop colete table 
#  truncate table employes ;    								# to drop complete table


## DML - Data manupuation language   # use to insert extarct change value inside the columns 
insert into employes (emp_id, first_name, Lastname, salary, jobcode) values (1 , "steven" , "king" , 12000,548) ;
insert into employes (emp_id, first_name, Lastname, salary, jobcode) values (2 , "Edvin", "thomas" ,15000 ,604) ;
insert into employes (emp_id, first_name, Lastname, salary, jobcode) values (3 , "Charly","seen"  ,20000 ,101) ;
insert into employes (emp_id, first_name, Lastname, salary, jobcode) values (4 , "Made","Deman"   ,30000  ,605 );
insert into employes (emp_id, first_name, Lastname, salary, jobcode) values (5 , "Made","Deman"   ,30020  ,55 );
insert into employes (emp_id, first_name, Lastname, salary, jobcode) values (6 , "Harry","Potter" ,25000 ,101) ;
insert into employes (emp_id, first_name, Lastname, salary, jobcode) values (7 , "Dumbule","Dore" ,31000 ,604) ;
insert into employes (emp_id, first_name, Lastname, salary, jobcode) values (8 , "Serius","Dore" ,310050 ,548) ;
insert into employes (emp_id, first_name, Lastname, salary, jobcode) values (9 , "Sanph","Dore" ,457050 ,605) ;
insert into employes (emp_id, first_name, Lastname, salary, jobcode) values (10 , "Rown","Dore" ,145450,101 ) ;

# To update the existing entrie
update employes set Lastname = "chaplin" where emp_id = 3 ;

# Delete command  to delete the entries form the datset
# delete from employes where emp_id in (1,3) ;

#  DCL Data control language iportent for banking DataControl Language
# grant --> this provide the access the columns

# Use to revoke the creataing restriction of column of entry acces for the user

# Transaction control language 
# To visulize what change you have made
# where clause
select * from employes where 		salary >14000 and salary<30000 ;
select * from employes where first_name = "Edvin" and salary >10000   ;
select * from employes where 			emp_id >2 and salary >10000   ;
select * from employes where 	first_name="Made" and Lastname="Deman" ;
select * from employes where 	Lastname="Deman" or Lastname="Dore" ;
select * from employes where salary between 15000 and 30000;
select * from employes where 	emp_id in (4,5); 
select * from employes where 		first_name like "H%";
select * from employes where 		first_name like "S%";
select * from employes where 	salary in (50000, 20000,31000);
select distinct first_name from employes ;
select max(salary) from employes where emp_id between 1 and 7 ;
select avg(salary) from employes where emp_id between 1 and 7 ;
select count(*) from employes ;

select first_name,jobcode, avg(salary) from employes group by jobcode ; 
select first_name ,salary from employes order by salary asc ;

select first_name, max(salary) from employes group by jobcode having count(jobcode)>2;
# SQL Union
create table departments (emp_id int not null , dept varchar(20) , department_location varchar(20)  );
insert into departments (emp_id,dept,department_location )  values (1,"Mechanical" ,"Up" )  ;
insert into departments (emp_id,dept,department_location )  values (2,"Civil" ,"Mp" )  ;
insert into departments (emp_id,dept,department_location )  values (3,"Computer" ,"Np" )  ;
insert into departments (emp_id,dept,department_location )  values (4,"Electronics" ,"Np" )  ;
insert into departments (emp_id,dept,department_location )  values (5,"Aerospace" ,"Gp" )  ;
insert into departments (emp_id,dept,department_location )  values (6,"Electrical" ,"Delhi" )  ;
insert into departments (emp_id,dept,department_location )  values (7,"Railway" ,"Haryana" )  ;
insert into departments (emp_id,dept,department_location )  values (8,"other" ,"Punjab" )  ;
insert into departments (emp_id,dept,department_location )  values (9,"Deputy" ,"Nagaland" )  ;
insert into departments (emp_id,dept,department_location )  values (10,"HR" ,"Jhasi" )  ;

select Player_Name ,char_length(Player_Name) from cricket_1 where char_length(Player_Name) = (select max(char_length(Player_Name))  from cricket_1 )  union
select Player_Name ,char_length(Player_Name)  from cricket_1 where char_length(Player_Name) = (select min(char_length(Player_Name))  from cricket_1 ) order by Player_Name ASC limit 2;
## using the left Join command 
# show all column and type of the entries
select * from departments ;


# SELECT * FROM Customers WHERE CustomerName LIKE '%a'; 

select * from employes ;

show databases ;