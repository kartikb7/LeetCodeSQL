# Write your MySQL query statement below

With CTE as (
    Select
        buyer_id,
        Count(item_id) order_count
    From
        Orders
    Where
        Year(order_date) = 2019
    Group by buyer_id
)

Select
    user_id buyer_id,
    join_date,
    coalesce(order_count, 0) orders_in_2019
From
    Users a Left Join
    CTE b
    On a.user_id = b.buyer_id
Order by 1