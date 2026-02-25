/*
Problem: Japanese Cities' Names
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-02-25
Environment: MS SQL Server

Goal:
"Query Names of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN."

Notes:
This one was strange since it's farther down in the exercises, but it's to pull all cities only.
*/

SELECT 
    NAME
FROM 
    CITY
WHERE 
    COUNTRYCODE = 'JPN';