/*
Problem: Average Population of Each Continent
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-09
Environment: MS SQL SERVER

Goal:Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) 
and their respective average city populations (CITY.Population) 
rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Notes:
*/

SELECT
    co.Continent
    ,FLOOR(AVG(c.Population))
FROM
    COUNTRY co
JOIN CITY c
    ON c.CountryCode = co.Code
GROUP BY
    co.Continent
;