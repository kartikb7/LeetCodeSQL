# Write your MySQL query statement below

Select
    id
From
    (Select
        id,
        Temperature,
        Lag(Temperature) Over (Order By RecordDate) "PrevDay"
    From
        Weather) a
Where Temperature > PrevDay