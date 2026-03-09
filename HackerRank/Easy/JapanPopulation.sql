/*
Problem: Japan Population
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-08
Environment: MS SQL SERVER

Goal:Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

Notes:
*/

SELECT
    SUM(POPULATION)
FROM
    CITY
WHERE
COUNTRYCODE = 'JPN'
;