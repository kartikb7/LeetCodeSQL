/* Write your PL/SQL query statement below */

With Cte as(
Select
    customer_id, Min(order_date) As first_order_date
From
    Delivery
Group By customer_id)

Select
    Round(100*Sum(Case When a.order_date=customer_pref_delivery_date Then 1
       Else 0 End)/Count(*),2) AS immediate_percentage
From
    Delivery a Inner Join Cte b
    on a.customer_id = b.customer_id
    And a.order_date = b.first_order_date