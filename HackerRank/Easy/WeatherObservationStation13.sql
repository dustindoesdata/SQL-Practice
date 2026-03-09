/*
Problem: Weather Observation Station 13
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-08
Environment: MS SQL SERVER

Goal:Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. 
Truncate your answer 4 to decimal places.

Notes:
*/

SELECT
    CAST(SUM(LAT_N) AS DECIMAL(10,4)) AS Sum_Northern_Latitudes
FROM
    STATION
WHERE
    LAT_N BETWEEN 38.7880 AND 137.2345
;