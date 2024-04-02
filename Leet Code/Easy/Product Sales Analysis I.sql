/*
Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
*/
SELECT P.product_name , S.year, S.price
FROM Sales S
JOIN Product P ON S.product_id  = P.product_id 
