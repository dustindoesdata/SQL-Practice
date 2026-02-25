/*
Problem: Revising the Select Query I
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-02-24
Environment: MS SQL Server

Goal:
"Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA."

Notes:
Simple Filtering using multiple Where conditions. 
I have a habit of writing the larger filters first the order usually doesn't make a performative difference, but it's for readability.
Load CITY table
Remove rows not matching WHERE
Return specific columns for efficiency since in large data sets SELECT * consumes greater resources.
*/

SELECT ID, NAME, COUNTRYCODE, POPULATION
FROM CITY
WHERE COUNTRYCODE = 'USA'
AND POPULATION > 100000;