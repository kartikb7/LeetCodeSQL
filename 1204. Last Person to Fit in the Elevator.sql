# Write your MySQL query statement below

With CTE As (
    Select
        a.person_id,
        a.person_name,
        a.turn,
        SUM(b.weight) as cumm_weight
    From
        Queue a
        Inner Join Queue b
        On a.turn >= b.turn
    Group by
        a.person_id, a.person_name, a.turn
    Order by a.turn
    )

Select
    person_name
From CTE
Where cumm_weight <= 1000
Order by turn Desc
Limit 1

    