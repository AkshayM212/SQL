/*
Write a solution to report the latest login for all users in the year 2020. Do not include the users who did not login in 2020
*/
select user_id, max(time_stamp) as last_stamp
from Logins
where date_part('year',time_stamp) = 2020
group by user_id;
