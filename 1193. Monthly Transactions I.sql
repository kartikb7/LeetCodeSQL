# Write your MySQL query statement below

Select
    DATE_FORMAT(trans_date, '%Y-%m') month,
    country,
    count(*) as trans_count,
    Sum(
    Case When state = 'approved' Then 1
        Else 0 End
    ) approved_count,
    Sum(amount) trans_total_amount,
    Sum(
    Case When state = 'approved' Then amount
        Else 0 End
    ) approved_total_amount
From
    Transactions
Group by
    1,2