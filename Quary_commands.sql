select * from cricket_1 ;
select * from cricket_2 ;
# Find all player who present in match 1 or match 2 ;
select Player_Name  from cricket_1 union select Player_Name from cricket_2 ;
select avg(Popularity) from cricket_1  ;
# select max(salary) , FirstName ,dept from Persons group by dept.
select avg(Popularity) from cricket_1 ;
select Player_Name ,Popularity from cricket_1 where Popularity>(select avg(Popularity) from cricket_1)  ;
# Find player id and player name that are common in the test match1 and test match2 .
select Player_Name ,Player_id  from cricket_1 where  cricket_1.Player_id  in (select Player_id from cricket_2 ) ;
# Retrieve player_id ,runs and player name from cricket_1 table and display the list of players where the runs are more than average runs.
select AVG(Runs) from cricket_1  ;
select Player_id,Runs ,Player_Name from cricket_1 where Runs > (select AVG(Runs) from cricket_1 ) ; 
select Player_id,Runs ,Player_Name from cricket_1 where Runs > 50 ; 

# ] write a query to extract all columns from cricket_1 where player names start with y and end with v.

select * from cricket_1 where Player_Name like '%v' ; 
#  write a query to extract all the columns from cricket_1 where player name does not end with t 
select * from cricket_1 where Player_Name not like '%t'  ;

# Loaded New_cricket csv file in datasets 
select * from New_cricket  ;
# 8] Extract the Player_id and Player_Name of the players where the charisma value is null  ----> No solution 
# select Player_id ,Player_Name from New_cricket where charisma is null 
select Player_id , substr(Player_id ,3) from New_cricket ;
# Write a SQL query to extract Player_id ,player_name and charisma where the charisma is greater than 25.


select * from cricket_2  ;

select Player_id,Player_Name,player_name,Popularity,Runs from New_cricket where Runs>=15 and Popularity>2;


select  C1.Player_id , c1 .Player_Name , count(C1.Runs)  from cricket_1 c1 , cricket_2 c2  where c1.Player_id = c2.Player_id ;
-- SELECT column_name(s)  FROM table_name WHERE condition GROUP BY column_name(s) HAVING condition
























