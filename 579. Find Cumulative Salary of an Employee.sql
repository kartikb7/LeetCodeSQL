# Write your MySQL query statement below


Select
    a.Id,
    a.Month,
    Sum(b.Salary) Salary
From
    Employee a
    Inner Join Employee b
    On a.Id = b.Id
    And a.Month >= b.Month
    And a.Month - b.Month < 3
Where (a.Id,a.Month) not in (Select Id, Max(Month) from Employee Group by Id)
Group by a.Id, a.Month
Order by Id, Month Desc