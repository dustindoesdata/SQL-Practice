/*
Problem: Weather Observation Station 15
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-09
Environment: MS SQL SERVER

Goal: Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. 
Round your answer to 4 decimal places.


Notes:
*/

SELECT TOP 1
    CAST(ROUND(LONG_W, 4)AS DECIMAL(10, 4)) AS Solution
FROM
    STATION
WHERE
    LAT_N < 137.2345
ORDER BY 
    LAT_N DESC
;