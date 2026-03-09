/*
Problem: Top Earners
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-08
Environment: MS SQL SERVER

Goal:We define an employee's total earnings to be their monthly salary * months worked, 
and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 
Then print these values as 2 space-separated integers.

Notes: concat was needed to fulfill the 2 space-seperated requirement.
*/

SELECT CONCAT(MAX(total_earnings), '  ', COUNT(*)) AS result
FROM (
    SELECT salary * months AS total_earnings
    FROM Employee
) AS earnings
WHERE total_earnings = 
    (SELECT MAX(salary * months) 
    FROM Employee);
