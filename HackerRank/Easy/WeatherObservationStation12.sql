/*
Problem: Weather Observation Station 12
Platform: HackerRank
Difficulty: EASY
Date Solved: 2026-03-03
Environment: MS SQL SERVER

Goal:Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
Your result cannot contain duplicates.

Notes:Three Rules.
DOES NOT start with a vowel.
DOES NOT end with a vowel.
NO DUPLICATES.
*/

SELECT DISTINCT 
    CITY 
FROM 
    STATION 
WHERE 
    CITY NOT LIKE '[aeiou]%'
        AND
    CITY NOT LIKE '%[aeiou]';