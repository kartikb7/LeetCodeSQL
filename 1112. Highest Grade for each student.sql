/* Write your PL/SQL query statement below */


With Cte as(
    Select
        student_id, Max(grade) max_grade
    From Enrollments
    Group by student_id
    )
    

Select
    a.student_id, Min(course_id) course_id, Max(grade) grade
From Enrollments a Inner Join Cte b
    On a.student_id = b.student_id
    And a.grade = b.max_grade
Group By a.student_id
Order by a.student_id