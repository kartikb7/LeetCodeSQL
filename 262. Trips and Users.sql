/* Write your PL/SQL query statement below */


Select
    Request_at as "Day",
    Round(Sum(Case Status
        When 'cancelled_by_driver' Then 1
        When 'cancelled_by_client' Then 1
        Else 0 End)/Count(*),2) As "Cancellation Rate"
From
    Trips t 
    Join Users u1
    on t.Client_Id = u1.Users_Id
    Join Users u2
    on t.Driver_Id = u2.Users_Id
where
    u1.Banned = 'No'
    and u2.Banned = 'No'
    and Request_at Between '2013-10-01' and '2013-10-03'
Group by Request_at
Order by 1
