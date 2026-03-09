/*
Problem: Average Population
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-08
Environment: MS SQL SERVER

Goal:Query the average population for all cities in CITY, rounded down to the nearest integer.

Notes:
*/

SELECT 
    FLOOR(AVG(POPULATION))
FROM
    CITY
;