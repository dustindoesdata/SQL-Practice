/*
Problem: Population Census 
Platform: HackerRank
Difficulty: Easy
Date Solved: 
Environment: MS SQL SERVER

Goal:Given the CITY and COUNTRY tables, 
query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Notes:
*/

-- Inner Join, because we want only cities matching the country 'ASIA'
SELECT
    SUM(c.Population)
FROM
    CITY c
JOIN COUNTRY co
    ON c.CountryCode = co.Code
WHERE
    co.Continent = 'Asia'
    
;