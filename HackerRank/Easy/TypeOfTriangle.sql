/*
Problem: Type Of Triangle
Platform: HackerRank
Difficulty: Easy
Date Solved: 2026-03-02
Environment: MS SQL SERVER

Goal: Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 
Output one of the following statements for each record in the table: Column[A,B,C]

Equilateral: It's a triangle with 3 sides of equal length.
Isosceles: It's a triangle with 2 sides of equal length.
Scalene: It's a triangle with 3 sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.

Notes: The rules are above this time. 
I consider always putting the contraints first to remove low hanging fruits first, 
since it's a sequential test. The constraint is the 'Triangle Inequality Theorem' 
(I had to Google it - it's been a while) 
This states that the sum length of two sides must be greater than the third.

*/

/*This solution is readable, and normally you would use a Derived Table if there is a formula that is being used more than once.
In a longer solution you might use a CTE or (Common Table Expression) for reusability.
In this case, the formula is straight forward enough you could leave it like this with no issues.
Derived Table(Within Single Select), CTE (Within a Single Query), Temp Table(Within a Session), View(permanent) 
*/
SELECT 
    CASE
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR A = C OR B = C THEN 'Isosceles'

        ELSE 'Scalene'
    END AS TypeOfTriangle
FROM TRIANGLES;