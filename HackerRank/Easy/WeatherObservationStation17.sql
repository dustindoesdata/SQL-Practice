/*
Problem: Weather Observation Station 17
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-09
Environment: MS SQL SERVER

Goal: Query the Western Longitude (LONG_W) 
where the smallest Northern Latitude (LAT_N) in STATION 
is greater than 38.7780. Round your answer to 4 decimal places.

Notes:
*/

SELECT
    CAST(LONG_W AS DECIMAL(10, 4))
FROM
    STATION
WHERE
    LAT_N = (
        SELECT
            MIN(LAT_N)
        FROM
            STATION
        WHERE
            LAT_N > 38.7780
        
    )
;