/* Write your PL/SQL query statement below */


Select
    post_id,
    nvl(number_of_comments,0) number_of_comments
From
        (Select
            sub_id post_id
        From
            Submissions
        Where parent_id is Null
        Group By sub_id, parent_id) b
    Left Join
        (Select
            parent_id,
            Count(*) number_of_comments
        From
            (Select
                sub_id, parent_id
            From
                Submissions
            Where parent_id is not Null
            Group By sub_id, parent_id) c
        Group by parent_id) d
On post_id = parent_id
Order by post_id