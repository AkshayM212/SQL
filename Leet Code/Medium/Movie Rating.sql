/*
Write a solution to:

Find the name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically smaller user name.
Find the movie name with the highest average rating in February 2020. In case of a tie, return the lexicographically smaller movie name.
*/

select results
from
(select name as results, count(name) cnt
from MovieRating m
join Users u on u.user_id = m. user_id
group by name
order by cnt desc, name
limit 1)

union all

select results
from
(select mo.title as results, avg(rating) avg
from MovieRating mr
join Movies mo on mo.movie_id = mr.movie_id
where created_at  between to_date('01-02-2020','dd-mm-yyyy') and to_date('29-02-2020','dd-mm-yyyy')
group by mo.title
order by avg desc,  mo.title
limit 1)
