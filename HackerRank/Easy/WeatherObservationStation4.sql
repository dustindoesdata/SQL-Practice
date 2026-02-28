/*
Problem: Weather Observation Station 4
Platform: HackerRank
Difficulty: EASY
Date Solved: 2026-02-27
Environment: MS SQL SERVER

Goal: Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
where LAT_N is the northern latitude and LONG_W is the western longitude.
For example, if there are three records in the table with CITY 
values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'. 
The query returns 1, because total number of records - number of unique city names = (3-2 = 1)

Notes: Seems like the problem is a bit wordy. 
to put simply, the objective root of the problem is getting a count difference between all cities and distinct cities. 
This is useful when checking records and cleaning data, and can be dont with a simple count function.
*/

/*
Simple for a quick look at the difference 
between cities and unique cities. 
We can apply better visability.
*/
SELECT 
    COUNT(CITY) 
    - COUNT(DISTINCT(CITY))
FROM
    STATION;

/*
A solution that focuses on readability using query folding, 
for duplicable effort if needed again by another user.
*/

SELECT
    TotalCities - DistinctCities AS DuplicateCityCount
FROM (
    SELECT
        COUNT(CITY) AS TotalCities,
        COUNT(DISTINCT CITY) AS DistinctCities
    FROM STATION
) s;

/*
Large Scale solution,
Create an index
*/

CREATE NONCLUSTERED INDEX IX_Station_City
ON STATION (CITY);

--Now run the query
SELECT 
    COUNT(CITY) 
    - COUNT(DISTINCT CITY) 
    AS DuplicatedCityCount
FROM 
    STATION;

