/*
Problem: Revising Aggregations - Averages
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-08
Environment: MS SQL SERVER

Goal: Query the average population of all cities in CITY where District is California.

Notes:
*/

SELECT
    AVG(POPULATION)
FROM
    CITY
WHERE 
    DISTRICT = 'California'