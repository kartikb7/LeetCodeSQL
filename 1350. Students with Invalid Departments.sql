# Write your MySQL query statement below

Select
    Students.id,
    Students.name
From
    Students Left Join Departments
    On Students.department_id = Departments.id
Where Departments.name is Null