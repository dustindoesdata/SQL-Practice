/*
Problem: Revising Aggregations - The Sum Function
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-08
Environment: MS SQL SERVER

Goal: Query the total population of all cities in CITY where District is California.

Notes:
*/

SELECT
    SUM(POPULATION)
FROM
    CITY
WHERE
    DISTRICT = 'California'
;