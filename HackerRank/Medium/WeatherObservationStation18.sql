/*
Problem: Weather Observation Station 18
Platform: HackerRank
Difficulty: Medium
Date Solved: 2026-03-09
Environment: MS SQL SERVER

Goal:Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.
 a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
 b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
 c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
 d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

Notes:
a = MIN(LAT_N)
b = MIN(LONG_W)
c = MAX(LAT_N)
d = MAX(LONG_W)

P1 = ( MIN(LAT_N),MIN(LONG_W) )
P2 = ( MAX(LAT_N),MAX(LONG_W) )

MANHATTAN DISTANCE = |X1 - X2| + |Y1 - Y2|

-- PLANE = P1(a,b) and P2(c,d)
-- PlanePoint(X,Y)
-- MANHATTAN DISTANCE = |X1 - X2| + |Y1 - Y2| OR |a - c| + |b - d|
-- |(expression)| means no negative values, SO ABS(Absolute) or distance from 0
*/

SELECT
    CAST(
        ROUND(
            ABS(MIN(LAT_N)-MAX(LAT_N)) -- |a - c|
           +ABS(MIN(LONG_W)-MAX(LONG_W)) -- |b - d|
    ,4) -- Round 4 places
AS DECIMAL(10,4)) -- Removes extra 0 at the end
FROM
    STATION
;