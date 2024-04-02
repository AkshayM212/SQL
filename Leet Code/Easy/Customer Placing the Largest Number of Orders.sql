/*
Write a solution to find the customer_number for the customer who has placed the largest number of orders
*/
SELECT customer_number FROM Orders
GROUP BY customer_number
ORDER BY COUNT(customer_number) DESC
LIMIT 1
