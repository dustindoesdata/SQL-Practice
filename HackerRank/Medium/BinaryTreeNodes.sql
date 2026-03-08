/*
Problem: Binary Tree Nodes
Platform: HackerRank
Difficulty: Medium
Date Solved: 2026-03-07
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
/*This solution could be improved for large datasets, since 'NOT IN' builds a whole set of every parent value, 
and then compares each node against the entire set.*/
SELECT 
    N
    ,CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N NOT IN (SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'
        ELSE 'Inner'
    END AS IdentifyNode
FROM BST
ORDER BY N;

-- Solution 2
/*This solution uses a table alias and a coorelated subquery(depends on a column fromt he outer query) 
to check for children instead of comparing the entire set. 
This solution evaluates each row individually and then stops on a match. */
SELECT
    node.N AS node_value, -- node is alias for outer
    CASE
        WHEN node.P IS NULL THEN 'Root'
        WHEN NOT EXISTS (
            SELECT 1 -- Placeholder, SQL says you need it to run this I just need a bool, not the data itself.
            FROM BST potential_child --Ref same table alias for inner 
            WHERE potential_child.P = node.N --Checks for parents
        ) THEN 'Leaf'
        ELSE 'Inner'
    END AS node_type
FROM BST node
ORDER BY node.N;