/*
Problem: Weather Observation Station 10
Platform: HackerRank
Difficulty: EASY
Date Solved: 2026-03-03
Environment: MS SQL SERVER

Goal:Query the list of CITY names from STATION that do not end with vowels. 
Your result cannot contain duplicates.

Notes:Two rules.
DOES NOT end with a vowel
NO DUPLICATES.
*/

SELECT DISTINCT 
    CITY 
FROM 
    STATION 
WHERE 
    CITY NOT LIKE '%[aeiou]';