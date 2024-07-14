/*
Write a solution to report the name and balance of users with a balance higher than 10000. The balance of an account is equal to the sum of the amounts of all transactions involving that account.

Return the result table in any order
*/
with cte as 
            (select name, sum(amount) as balance
            from Transactions t
            join Users u on u.account = t.account
            group by name)
select *
from cte
where balance > 10000;
