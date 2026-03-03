/*
Problem: Weather Observation Station 5 
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-02
Environment: MS SQL SERVER

Goal:Query the two cities in STATION with the shortest and longest CITY names, 
as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, 
choose the one that comes first when ordered alphabetically.

Notes: This problem has three rules: 
Measure number of characters, so Len. 
We need Min and Maximum. 
We need a tie breaker.
*/

SELECT CITY, LEN(CITY) AS name_length
FROM (
    SELECT TOP (1) CITY
    FROM STATION
    ORDER BY LEN(CITY) ASC, CITY ASC
) AS shortest

UNION ALL

SELECT CITY, LEN(CITY) AS name_length
FROM (
    SELECT TOP (1) CITY
    FROM STATION
    ORDER BY LEN(CITY) DESC, CITY ASC
) AS longest;