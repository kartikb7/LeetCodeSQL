Select
    team_id,
    team_name,
    COALESCE(Sum("num_points"), 0) "num_points"
From
    Teams a Left Join
    (
    Select
        host_team "Id",
        Case 
            When host_goals>guest_goals Then 3
            When host_goals=guest_goals Then 1
            Else 0
        End "num_points"
    From
        Matches
    UNION ALL
    Select
        guest_team "Id",
        Case 
            When guest_goals>host_goals Then 3
            When host_goals=guest_goals Then 1
            Else 0
        End "num_points"
    From
        Matches
    ) b
    On team_id = "Id"
Group By team_id, team_name
Order by 3 desc, 1