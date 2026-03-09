/*
Problem: Revising Aggregations - The Count Function
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-08
Environment: MS SQL SERVER

Goal:
Query a count of the number of cities in CITY having a Population larger than 100,000.

Notes:
*/

SELECT DISTINCT
    COUNT(ID)
FROM
    CITY
WHERE
    POPULATION > 100000
;