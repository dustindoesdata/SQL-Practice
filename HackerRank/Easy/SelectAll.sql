/*
Problem: Select All
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-02-24
Environment: MS SQL Server

Goal:
"Query all columns (attributes) for every row in the CITY table."

Notes:
This one was strange since it's farther down in the exercises, but it's to SELECT *, however, considering how inefficient and bad in practice that is in an actual database, I decided to name the columns individually.
*/

SELECT 
    ID
    , NAME
    , COUNTRYCODE
    , DISTRICT
    , POPULATION
FROM 
    CITY;