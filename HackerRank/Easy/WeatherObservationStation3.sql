/*
Problem: Weather Observation Station 3
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-02-25
Environment: MS SQL Server

Goal:
"Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer."

Notes:
This one is fun, in order to get an even result we use modulo (which takes takes the remainder of a number). 
Modulo can be expressed with the operator '%' or mod function 'MOD(X,Y)'
If we set the modulo to 0 the remainder will only return positive numbers since all even numbers are divisible by 2.
*/

SELECT DISTINCT 
    CITY 
FROM 
    STATION 
WHERE 
    ID % 2 = 0;