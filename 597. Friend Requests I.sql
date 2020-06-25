/* Write your PL/SQL query statement below */

With Temp as (
    Select
        Count (*) as Accepted
    From (    
        Select
            distinct requester_id , accepter_id
        From
            request_accepted
    ) c
)


Select 
    Round(Accepted/
    Case When e.Requests=0 Then 1
    Else e.Requests End,2) As accept_rate
From 
    Temp,
    (Select
        Count (*) as Requests
    From (
        Select
            distinct sender_id, send_to_id
        From
            friend_request
    ) d) e