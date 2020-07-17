# Write your MySQL query statement below

Select
    name
From customer
Where
    Coalesce(referee_id, 0) != 2