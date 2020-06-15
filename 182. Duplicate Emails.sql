/* Write your PL/SQL query statement below */

Select
    Email
From
    Person
Group by Email
Having Count(Id)>1