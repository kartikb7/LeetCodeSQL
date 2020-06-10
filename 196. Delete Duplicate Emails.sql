# Write your MySQL query statement below

Delete From Person
Where Id not in (
	(Select MinId
     	From 
     		(Select
                Email, Min(Id) "MinId"
             From Person
             Group by Email)a
     		)
	)