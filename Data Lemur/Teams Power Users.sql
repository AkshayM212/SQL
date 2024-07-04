/*
Write a query to identify the top 2 Power Users who sent the highest number of messages on Microsoft Teams in August 2022. Display the IDs of these 2 users along with the total number of messages they sent. Output the results in descending order based on the count of the messages.
*/
SELECT sender_id, count(sender_id) as message_count
FROM messages
where sent_date BETWEEN to_date('01-08-2022','dd-mm-yyyy') and to_date('31-08-2022','dd-mm-yyyy')
GROUP BY sender_id
order by message_count desc
limit 2
