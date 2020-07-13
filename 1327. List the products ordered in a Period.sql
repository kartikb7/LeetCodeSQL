# Write your MySQL query statement below


Select
    product_name,
    Sum(unit) unit
From
    Products Join Orders
    ON Products.product_id = Orders.product_id
Where order_date >= '2020-02-01'
    And order_date < '2020-03-01'
Group by Products.product_id
Having Sum(unit)>=100