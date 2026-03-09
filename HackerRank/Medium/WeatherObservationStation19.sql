/*
Problem:
Platform: HackerRank
Difficulty:
Date Solved: 
Environment: MS SQL SERVER

Goal:Consider P1(a,c) and P2(b,d) to be two points on a 2D plane 
where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) 
and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.

Notes:
a = MIN(LAT_N)
b = MIN(LONG_W)
c = MAX(LAT_N)
d = MAX(LONG_W)

Euclidean Distance for 2D Plane is d(x,y) = sqrt( (x1-y1)^2 + (x2-y2)^2 )
-- PLANE = P1(a,b) and P2(c,d)
-- PlanePoint(X,Y)
-- d(x,y) = sqrt( (a-c)^2+(b-d)^2 )
*/

SELECT
    CAST(
        ROUND(
            SQRT(
                POWER( MIN(LAT_N)-MAX(LAT_N),2 )
                +POWER( MIN(LONG_W)-MAX(LONG_W),2)
            )
        ,4)
    AS DECIMAL (10,4))
FROM
    STATION
;