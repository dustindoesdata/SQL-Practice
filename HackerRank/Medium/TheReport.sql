/*
Problem: The Report
Platform: HackerRank
Difficulty: Medium
Date Solved:
Environment: MS SQL SERVER

Goal:You are given two tables: Students and Grades. 
Students contains three columns ID, Name and Marks.
Ketty gives Eve a task to generate a report containing 
three columns: Name, Grade and Mark. 
Ketty doesn't want the NAMES of those students 
who received a grade lower than 8. 
The report must be in descending order by grade -- 
i.e. higher grades are entered first. 
If there is more than one student with the same grade 
(8-10) assigned to them, order those particular students 
by their name alphabetically. 
Finally, if the grade is lower than 8, 
use "NULL" as their name and list them 
by their grades in descending order. 
If there is more than one student with the same grade 
(1-7) assigned to them, order those particular students 
by their marks in ascending order.

Write a query to help Eve.

Notes:
Two Tables: Students and Grades
Students- ID, Name, Marks
Grades- Grade, Min_Mark, Max_Mark

Required Columns- Name, Grade, and Mark
Grades >= 8
Order by Grade DESC, Name ASC
Grade < 8 = "NULL" as Name
Order by Grades DESC, Marks ASC

*/

-- I would prefer to compile a CTE for readability and the ease of onboarding, but it didn't compile in HackerRank, so I just went with a join.
SELECT
    CASE
        WHEN g.Grade < 8 THEN 'NULL'
        ELSE s.Name
    END AS Name,
    g.Grade,
    s.Marks
FROM Students s
JOIN Grades g
    ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY
    g.Grade DESC,
    CASE WHEN g.Grade >= 8 THEN s.Name END ASC,
    CASE WHEN g.Grade < 8  THEN s.Marks END ASC;