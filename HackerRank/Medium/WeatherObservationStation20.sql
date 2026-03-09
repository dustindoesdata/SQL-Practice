/*
Problem: Weather Observation Station 20
Platform: HackerRank
Difficulty: Medium
Date Solved:
Environment: MS SQL SERVER

Goal: A median is defined as a number separating the higher half of a data set from the lower half. 
Query the median of the Northern Latitudes (LAT_N) from STATION 
and round your answer to  decimal places.

Notes:
*/
--This windows function might not be present in all versions of SQL.
SELECT DISTINCT
    CAST(
        ROUND(
            PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY LAT_N) OVER ()
        ,4) 
    AS DECIMAL(10,4)) AS median_lat
FROM STATION;