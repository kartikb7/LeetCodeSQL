/* Write your PL/SQL query statement below */

Select
    seat_id
From
    (Select
        seat_id,
        free,
        Lead(free) Over (Order By seat_id) free_next,
        Lag(free) Over (Order By seat_id) free_prev
    From
        Cinema)
Where
    free = 1
    And (free_next = 1 Or free_prev = 1)