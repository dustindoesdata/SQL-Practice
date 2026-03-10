/*
Problem: Draw The Triangle 1
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-09
Environment: MS SQL SERVER

Goal:
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).

Notes:
*/

WITH 
    Numbers AS (
    SELECT 1 AS n
    UNION ALL
    SELECT 
        n + 1
    FROM
        Numbers
    WHERE 
        n < 20
)

    SELECT 
        REPLICATE('* ', 21 - n) AS Pattern
    FROM
        Numbers
    ORDER BY 
        n
    OPTION 
        (MAXRECURSION 20)
;