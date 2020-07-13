# Write your MySQL query statement below

With CTE as(
    Select
        product_id,
        Max(change_date) as max_date
    From Products
    Where change_date <= '2019-08-16'
    Group by product_id
)

Select
    product_id, new_price price
From 
    Products
Where
    (Product_Id, change_date) in (Select * From CTE)

UNION
Select
    product_id, 10 price
From
    Products
Group by product_id
Having(Min(change_date)>'2019-08-16')