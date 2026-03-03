/*
Problem: Weather Observation Station 7
Platform: HackerRank
Difficulty: EASY
Date Solved: 2026-03-03
Environment: MS SQL SERVER

Goal:Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) 
as both their first and last characters. 
Your result cannot contain duplicates.

Notes: This one has three rules
Must BEGIN with a vowel.
Must END with a vowel.
Must not DUPLICATE.

Mash together 6+7 and you get the solution to 8
*/

SELECT 
    CITY 
FROM 
    STATION 
WHERE 
    CITY LIKE '%[a,e,i,o,u]' 
        AND 
    CITY LIKE '[a,e,i,o,u]%';