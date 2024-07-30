/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* 
* * 
* * * 
* * * * 
* * * * *
Write a query to print the pattern P(20)..*/

delimiter &&
create procedure print_pattren(a int)
    begin
    declare num int default 1;
        while num<=a do
        select repeat('* ',num);
        set num = num + 1;
        end while;
    end;
    &&
    
call print_pattren(20)
