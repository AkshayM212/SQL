/*
Find the most profitable company from the financial sector. Output the result along with the continent.
*/
select company, continent 
from forbes_global_2010_2014                               
where profits = 
                               ( select max(profits)
                                from forbes_global_2010_2014
                                where sector = 'Financials'
                                group by company, continent
                                limit 1)
