/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).

*/

delimiter &&
create procedure print_pattren(a int)
    begin
        while a >=1 do
        select repeat('* ',a);
        set a = a - 1;
        end while;
    end;
    &&
    
call print_pattren(20)
