/*Write a query to retrieve the top three cities that have the highest number of completed trade orders listed in descending order. Output the city name and the corresponding number of completed trade orders.*/
select u.city, COUNT(order_id) as total_orders FROM users u 
join trades t on t.user_id = u.user_id
where status = 'Completed'
group by u.city
ORDER BY total_orders desc
limit 3
