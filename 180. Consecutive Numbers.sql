/* Write your PL/SQL query statement below */

Select
    Distinct(Num) ConsecutiveNums
From
    (Select
        Num,
        Lag(Num,1) OVER (ORDER BY Id) Num1,
        Lag(Num,2) OVER (ORDER BY Id) Num2
    From Logs) c
Where 
    Num = Num1
    and Num1 = Num2