/*
Problem: Population Density 
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-08
Environment: MS SQL SERVER

Goal:Query the difference between the maximum and minimum populations in CITY.

Notes:
*/

SELECT
    MAX(POPULATION) - MIN(POPULATION)
FROM
    CITY
;