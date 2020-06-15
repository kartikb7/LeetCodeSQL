Select
    team_id,
    team_name,
    Sum(Case 
        When host_goals>guest_goals Then 3
        When host_goals=guest_goals Then 1
        Else 0
    End) "num_points"
From
    (
    Select
        team_id,
        team_name,
        host_goals,
        guest_goals
    From
        Teams a 
        Left Join Matches b
        On a.team_id = b.host_team
    UNION
    Select
        team_id,
        team_name,
        host_goals AS "guest_goals",
        guest_goals AS "host_goals"
    From
        Teams a 
        Left Join Matches b
        On a.team_id = b.guest_team
    ) c
Group By team_id, team_name
Order by 3 desc