/*
Problem: Weather Observation Station 14
Platform: HackerRank
Difficulty: Easy
Date Solved: 
Environment: MS SQL SERVER

Goal:Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. 
Truncate your answer to decimal places.

Notes:
*/

SELECT
    CAST(MAX(LAT_N) AS DECIMAL(10, 4)) AS MAX_Northern_Latitudes
FROM
    STATION
WHERE
    LAT_N < 137.2345
;