/*
Problem: Employee Names
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-02
Environment: MS SQL SERVER

Goal: Write a query that prints a list of employee names (i.e.: the name attribute) 
from the Employee table in alphabetical order.

Notes: Select the names column, and default is ASC order.
*/

SELECT 
    name 
FROM 
    Employee 
ORDER BY 
    name ASC;