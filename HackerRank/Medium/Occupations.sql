/*
Problem: Occupation
Platform: HackerRank
Difficulty: Medium
Date Solved: 2026-03-06
Environment: MS SQL SERVER

Goal: Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. 
The output should consist of four columns (Doctor, Professor, Singer, and Actor) in that specific order, 
with their respective names listed alphabetically under each column.
Print NULL when there are no more names corresponding to an occupation.

Notes: PIVOT is not used in every SQL table, so I am going to create multiple solutions on this one. a CTE using PIVOT(), 
another using MAX() declaring each column, and finally a variable option.
*/

--Solution 1 (Uses PIVOT, like it asked.)
-- Create CTE
WITH RN_OCCUPATIONS AS (
    SELECT
        Name,
        Occupation,
        ROW_NUMBER() OVER (
            PARTITION BY Occupation 
            ORDER BY Name
        ) AS RowNumber
    FROM OCCUPATIONS
)
--Pivot Table, MAX ignores nulls. 
    SELECT
        [Doctor]
        ,[Professor]
        ,[Singer]
        ,[Actor]
    FROM 
        RN_OCCUPATIONS
    PIVOT (
    MAX(Name) FOR Occupation IN ([Doctor], [Professor], [Singer], [Actor])
) AS PivotedOccupations



-- Solution 2
-- Reuse CTE
WITH RN_OCCUPATIONS AS (
    SELECT
        Name,
        Occupation,
        ROW_NUMBER() OVER (
            PARTITION BY Occupation 
            ORDER BY Name
        ) AS RowNumber
    FROM OCCUPATIONS
)
-- Manual Pivot using MAX()
SELECT
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM RN_OCCUPATIONS
GROUP BY RowNumber
ORDER BY RowNumber;

--Making fake headers for easy reading (Commented out because HackerRank wouldn't accept it, but it makes it cleaner)
/*SELECT 0 AS RowNumber, 'Doctor' AS [Doctor], 'Professor' AS [Professor], 'Singer' AS [Singer], 'Actor' AS [Actor]
UNION ALL
SELECT * FROM PivotedOccupations
ORDER BY RowNumber;*/