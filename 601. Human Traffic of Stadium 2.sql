Select
    id, visit_date, people
From
    (Select
        id, visit_date, people,
        Lag(people) Over (Order by id) Lag_People_1,
        Lead(people) Over (Order by id) Lead_People_1,
        Lag(people, 2) Over (Order by id) Lag_People_2,
        Lead(people, 2) Over (Order by id) Lead_People_2
    From
        Stadium) a
Where
    people >= 100
    AND ((Lag_People_1>=100
         AND Lag_People_2>=100)
         OR (Lag_People_1>=100
         AND Lead_People_1>=100)
         OR (Lead_People_2>=100
         AND Lead_People_1>=100)
    )
