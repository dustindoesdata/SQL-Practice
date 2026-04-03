/*
Problem: Top Competitors
Platform: HackerRank
Difficulty: Medium
Date Solved: 
Environment: MS SQL SERVER

Goal:Julia just finished conducting a coding contest, 
and she needs your help assembling the leaderboard! 
Write a query to print the respective hacker_id and 
name of hackers who achieved full scores for more than 
one challenge. Order your output in descending 
order by the total number of challenges in which the 
hacker earned a full score. If more than one hacker 
received full scores in same number of challenges, 
then sort them by ascending hacker_id.

Notes:
Tables- Hackers, Difficulty, Challenges, Submissions

Hackers table- hacker_id, name
Difficulty table- difficulty_level, score
Challenge table- challenge_id, hacker_id, difficulty_level
Submissions table- submission_id, hacker_id, challenge_id, score

Required Columns- hacker_id, name
full scores > 1 challenge
Order by total number of challenges with full score (desc)
Order by hacker_id (asc)
*/