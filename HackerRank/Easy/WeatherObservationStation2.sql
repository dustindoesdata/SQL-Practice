/*
Problem: Weather Observation Station 2
Platform: HackerRank
Difficulty: EASY
Date Solved: 2026-02-27
Environment: MS SQL SERVER

Goal:Query the following two values from the STATION table:
The sum of all values in LAT_N r
ounded to a scale of  decimal places.
The sum of all values in LONG_W 
rounded to a scale of  decimal places.


Notes: SUM(x) coputes the total, 
CAST(... AS DECIMAL(10,2)) forces precision 10(left side) and scale 2(right side)
This approach guarantees two decimal places in the output.
*/

SELECT 
    CAST(SUM(LAT_N)     AS DECIMAL(10,2))   AS LAT_N,
    CAST(SUM(LONG_W)    AS DECIMAL(10,2))   AS LONG_W 
FROM 
    STATION;