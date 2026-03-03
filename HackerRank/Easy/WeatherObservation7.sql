/*
Problem: Weather Observation Station 7
Platform: HackerRank
Difficulty: EASY
Date Solved: 2026-03-02
Environment: MS SQL SERVER

Goal:Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

Notes: Same as the last one, except moving the % 
(basically a wildcard operator) 
so wherever the letters are written is WHERE you care about.
*/

SELECT DISTINCT 
    CITY
FROM 
    STATION
WHERE 
    CITY LIKE '%[aeiou]';