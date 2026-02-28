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


Notes:
*/

SELECT 
    CAST(
        ROUND(
            SUM(LAT_N), 2) 
            AS DECIMAL(10,2)) 
            AS LAT_N,
    CAST(
        ROUND(
            SUM(LONG_W), 2) 
            AS DECIMAL(10,2)) 
            AS LONG_W 
FROM 
    STATION;