/*
Problem: African Cities
Platform: HackerRank
Difficulty: Easy
Date Solved: 
Environment: MS SQL SERVER

Goal: Given the CITY and COUNTRY tables, 
query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Notes:
*/

--Inner Join, cities matching 'Africa' country.
SELECT 
    c.NAME
FROM
    CITY c
JOIN COUNTRY co
    ON c.CountryCode = co.Code
WHERE
    co.Continent = 'Africa'
;