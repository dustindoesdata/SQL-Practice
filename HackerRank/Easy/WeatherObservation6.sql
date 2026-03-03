/*
Problem:
Platform:
Difficulty:
Date Solved: 
Environment:

Goal:Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
Your result cannot contain duplicates.

Notes: We have two rules here.
Must Start with a vowel
Cannot contain duplicates.

The first solution is typing out a list, and adding multiple conditions with OR, 
and the second one uses a bracket expression to measure it in what 
you might recognize as a conditional check in programming.
*/

--Brute Force,
SELECT DISTINCT 
    CITY 
FROM 
    STATION 
WHERE 
    CITY LIKE 'a%' 
    OR CITY LIKE 'e%' 
    OR CITY LIKE 'i%' 
    OR CITY LIKE 'o%' 
    OR CITY LIKE 'u%';

--Using bracket expressions
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '[aeiou]%';