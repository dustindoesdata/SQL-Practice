/*
Problem: Weather Observation Station 16
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-09
Environment: MS SQL SERVER

Goal: Query the smallest Northern Latitude (LAT_N) from STATION 
that is greater than 38.7780. Round your answer to 4 decimal places.

Notes:
*/

SELECT
    CAST(MIN(LAT_N)AS DECIMAL(10, 4))
FROM
    STATION
WHERE
    LAT_N > 38.7780
;