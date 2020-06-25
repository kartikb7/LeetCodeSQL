Select
    sale_date,
    a.sold_num  - b.sold_num AS Diff
From
    Sales a Inner Join Sales b
    Using (sale_date)
Where
    a.fruit = 'apples'
    And b.fruit = 'oranges'