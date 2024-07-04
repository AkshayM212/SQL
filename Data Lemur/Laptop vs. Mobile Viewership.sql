/*
Assume you're given the table on user viewership categorised by device type where the three types are laptop, tablet, and phone.

Write a query that calculates the total viewership for laptops and mobile devices where mobile is defined as the sum of tablet and phone viewership. Output the total viewership for laptops as laptop_reviews and the total viewership for mobile devices as mobile_views
*/

SELECT
  (SELECT COUNT(device_type)
  FROM viewership
  where device_type = 'laptop')  as laptop_views,
  (SELECT COUNT(device_type)
  FROM viewership
  where device_type in ('tablet' , 'phone'))  as mobile_views

