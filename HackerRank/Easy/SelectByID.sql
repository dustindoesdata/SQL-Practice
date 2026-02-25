/*
Problem: Select By ID
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-02-24
Environment: MS SQL Server

Goal:
"Query all columns for a city in CITY with the ID 1661."

Notes:
Selecting every column, but by a specific ID
*/

SELECT 
    ID
    , NAME
    , COUNTRYCODE
    , DISTRICT
    , POPULATION
FROM 
    CITY
WHERE 
    ID= 1661;