/*
Problem: The PADS
Platform: HackerRank
Difficulty: Medium
Date Solved: 
Environment: MS SQL SERVER

Goal:
Generate the following two result sets:
Query an alphabetically ordered list of all names in OCCUPATIONS, 
immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). 
For example: An Actor Name(A), A Doctor Name(D), A Professor Name(P), and A Singer Name(S).

Query the number of ocurrences of each occupation in OCCUPATIONS. 
Sort the occurrences in ascending order, and output them in the following format:
There are a total of [occupation_count] [occupation]s.

where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. 
If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

Note: There will be at least two entries in the table for each type of occupation.

Notes: I used '+' vs CONCAT() for more strict type control. CONCAT() sometimes handles NULL values in a way that compresses vlues and hides results. 
this way you can declare your type conversions specificlly. 
*/

-- Query 1
SELECT 
    Name + '(' + LEFT(Occupation, 1) + ')' AS formatted_name
FROM 
    OCCUPATIONS 
ORDER BY 
    Name;

-- Query 2
SELECT 
    'There are a total of ' 
    + CAST(COUNT(*) AS VARCHAR(10))
    + ' '
    + LOWER(Occupation)
    + 's.' AS occupation_summary
FROM 
    OCCUPATIONS 
GROUP BY 
    Occupation 
ORDER BY 
    COUNT(*), Occupation;