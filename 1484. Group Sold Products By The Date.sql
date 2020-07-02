# Write your MySQL query statement below

Select
    sell_date, Count(Distinct Product) as num_sold,
    Group_Concat(Distinct product Order by product Separator ',') as products
From Activities
Group by sell_date
Order by sell_date