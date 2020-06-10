# Write your MySQL query statement below

Select
    id,
    Case
        When id=(Select Count(*) from Seat) and Number=1 Then student
        When Number=1 Then Odd_Num
        Else Even_Num End AS "student"
From
(Select
    id,
    student,
    lead(student) over (order by id) "Odd_Num",
    lag(student) over (order by id) "Even_Num",
    mod(id,2) "Number"
From seat) yo
