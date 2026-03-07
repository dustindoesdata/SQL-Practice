/*
Problem: Binary Tree Nodes
Platform: HackerRank
Difficulty: Medium
Date Solved:
Environment: MS SQL SERVER

Goal:You are given a table, BST, containing two columns: N and P, 
where N represents the value of a node in Binary Tree, and P is the parent of N.
Write a query to find the node type of Binary Tree ordered by the value of the node. 
Output one of the following for each node:
Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.

Notes:
    The P value in this table (parent) can be NULL, which means is p=NULL Node is a root.
    If the N value does not appear in the P value then its a leaf.
    If a value contains values in both, it is an inner. 
*/

-- Solution 1
--This solution could be improved, since 'NOT IN' generates a list of every parent value, so the number of records would be the records evaluated.
SELECT 
    N
    ,CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N NOT IN (SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'
        ELSE 'Inner'
    END AS IdentifyNode
FROM BST
ORDER BY N;