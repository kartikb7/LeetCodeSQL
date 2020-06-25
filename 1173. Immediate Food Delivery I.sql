/* Write your PL/SQL query statement below */
Select
    Round(100*Sum(Case
        When order_date = customer_pref_delivery_date Then 1
        Else 0 End)/Count(*),2) As immediate_percentage
From
    Delivery