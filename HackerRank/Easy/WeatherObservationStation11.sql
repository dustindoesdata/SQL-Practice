/*
Problem: Weather Observation Station 11
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-03
Environment: MS SQL SERVER

Goal:Query the list of CITY names from STATION that either 
do not start with vowels or do not end with vowels. 
Your result cannot contain duplicates.

Notes:Three rules.
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
        OR
    CITY NOT LIKE '%[aeiou]';