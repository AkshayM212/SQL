/*
Count the number of movies that Abigail Breslin nominated for oscar
*/


select count(nominee) 
from oscar_nominees
where nominee = 'Abigail Breslin'
