
Select
    a.id, a.visit_date, a.people
From
    stadium a, stadium b, stadium c
Where
    ((a.visit_date - b.visit_date = -1
    And a.visit_date - c.visit_date = -2) OR
    (a.visit_date - b.visit_date = 1
    And a.visit_date - c.visit_date = 2) OR
    (a.visit_date - b.visit_date = 1
    And a.visit_date - c.visit_date = -1))
    And a.people >= 100
    And b.people >= 100 
    And c.people >= 100
Group by a.id, a.visit_date, a.people
Order By id