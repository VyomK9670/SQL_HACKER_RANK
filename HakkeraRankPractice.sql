select * from employes;
# first name start with vowel   Your result cannot contain duplicates.
select distinct first_name from employes where first_name REGEXP '^[aeiou]' ;
# first name not start with vowel   Your result cannot contain duplicates.
select distinct first_name from employes where first_name not REGEXP '^[aeiou]' ;
# end with vowel    Your result cannot contain duplicates.
select distinct first_name from employes where first_name REGEXP '[aeiou]$' ;
# start and end with the vowel  charecters    Your result cannot contain duplicates.
select distinct first_name from employes where left(first_name, 1 ) in ("A","i","o""u")  and right(first_name, 1 ) in ("A","i","o""u")  ;

## Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
select sum(salary) from employes where Lastname="Deman" ;

## Query the Diifrenece of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
select max(salary) - min(salary) from employes where Lastname="Deman" ;

select * from employes ;
select  IF(length(salary)=6,salary,0 ) from  employes  ;

SELECT OrderID, Quantity, IF(Quantity>10, "MORE", "LESS")  FROM OrderDetails; 












