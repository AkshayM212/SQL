/*
Assume you're given two tables containing data about Facebook Pages and their respective likes (as in "Like a Facebook Page").

Write a query to return the IDs of the Facebook pages that have zero likes. The output should be sorted in ascending order based on the page IDs.
*/
SELECT P.page_id FROM pages P  
LEFT JOIN page_likes PL ON P.page_id = PL.page_id
WHERE user_id IS NULL
ORDER BY P.page_id
