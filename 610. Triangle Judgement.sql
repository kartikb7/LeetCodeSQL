# Write your MySQL query statement below

Select
    x, y, z,
    Case
    When x+y<=z Then 'No'
    When x+z<=y Then 'No'
    When y+z<=x Then 'No'
    Else 'Yes' End As Triangle
From
    triangle