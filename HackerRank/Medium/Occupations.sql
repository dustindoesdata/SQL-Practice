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



-- Solution 3
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
-- Create table variables for each profession
DECLARE @Doctor TABLE (rn INT, Name VARCHAR(25));
DECLARE @Professor TABLE (rn INT, Name VARCHAR(25));
DECLARE @Singer TABLE (rn INT, Name VARCHAR(25));
DECLARE @Actor TABLE (rn INT, Name VARCHAR(25));

-- Populate the created variables
INSERT INTO @Doctor
SELECT ROW_NUMBER() OVER (ORDER BY Name), Name
FROM OCCUPATIONS
WHERE Occupation = 'Doctor';

INSERT INTO @Professor
SELECT ROW_NUMBER() OVER (ORDER BY Name), Name
FROM OCCUPATIONS
WHERE Occupation = 'Professor';

INSERT INTO @Singer
SELECT ROW_NUMBER() OVER (ORDER BY Name), Name
FROM OCCUPATIONS
WHERE Occupation = 'Singer';

INSERT INTO @Actor
SELECT ROW_NUMBER() OVER (ORDER BY Name), Name
FROM OCCUPATIONS
WHERE Occupation = 'Actor';

-- Combine Variables with a JOIN 
SELECT 
    d.Name AS Doctor,
    p.Name AS Professor,
    s.Name AS Singer,
    a.Name AS Actor
FROM @Doctor d
FULL OUTER JOIN @Professor p ON d.rn = p.rn
FULL OUTER JOIN @Singer s ON COALESCE(d.rn, p.rn) = s.rn
FULL OUTER JOIN @Actor a ON COALESCE(d.rn, p.rn, s.rn) = a.rn
ORDER BY d.rn;

--Making fake headers for easy reading (Commented out because HackerRank wouldn't accept it, but it makes it cleaner)
/*SELECT 0 AS RowNumber, 'Doctor' AS [Doctor], 'Professor' AS [Professor], 'Singer' AS [Singer], 'Actor' AS [Actor]
UNION ALL
SELECT * FROM PivotedOccupations
ORDER BY RowNumber;*/