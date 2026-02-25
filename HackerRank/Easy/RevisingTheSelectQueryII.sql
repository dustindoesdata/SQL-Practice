/*
Problem: Revising the Select Query II
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-02-24
Environment: MS SQL Server

Goal:
"Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA."

Notes:
This problem is the same as 'Revising the Select Query I', but it requires a specific column 'NAME' instead of all columns and the value was adjusted from 100000 to 120000
*/

SELECT 
    NAME
FROM 
    CITY
WHERE 
    COUNTRYCODE = 'USA' 
    AND 
    POPULATION > 120000;