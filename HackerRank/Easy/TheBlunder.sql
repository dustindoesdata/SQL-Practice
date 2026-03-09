/*
Problem: The Blunder
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-08
Environment: MS SQL SERVER

Goal:Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, 
but did not realize her keyboard's 0 key was broken until after completing the calculation. 
She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.
Write a query calculating the amount of error (i.e.: actual - miscalculated average monthly salaries), and round it up to the next integer.

Notes: Because she removed zeros we had to do the same, so converting the INT into a string makes this a simple matter. T
hen you convert it back, and solve. Multiplying by 1.0 give you a float value, and ceiling rounds up. 
Doing this fixes the issue where the result was 1 number off.
*/

SELECT 
    CEILING(
        AVG(Salary * 1.0) 
        - AVG(CAST(REPLACE(CAST(Salary AS VARCHAR), '0', '') AS INT) * 1.0)
    ) AS error_amount
FROM EMPLOYEES;