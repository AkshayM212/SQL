/*
You are given a table, Projects, containing three columns: Task_ID, Start_Date and End_Date. It is guaranteed that the difference between the End_Date and the Start_Date is equal to 1 day for each row in the table.


If the End_Date of the tasks are consecutive, then they are part of the same project. Samantha is interested in finding the total number of different projects completed.

Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order. If there is more than one project
that have the same number of completion days, then order by the start date of the project.
*/
WITH cte as
                    (SELECT Start_Date,
                     RANK() OVER(ORDER BY Start_Date) AS RNK_START
                    FROM Projects
                    WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)),
        cte2 as
                    (SELECT End_Date,
                      RANK() OVER(ORDER BY End_Date) AS RNK_END
                    FROM Projects
                    WHERE End_Date NOT IN (SELECT Start_Date FROM Projects))
SELECT Start_Date, End_Date
FROM cte, cte2
WHERE RNK_START = RNK_END
ORDER BY DATEDIFF(Start_Date, End_Date) DESC
