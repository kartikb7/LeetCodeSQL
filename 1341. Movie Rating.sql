/* Write your PL/SQL query statement below */

Select Username as Results
From (
    Select
        user_id, Username, Rank() over (order by Max_Ratings Desc, Username) As UserRank
    From (
        Select
            user_id, Users.name As Username, count(distinct movie_id) As Max_Ratings
        From
            Movie_Rating Inner Join Users Using(user_id)
        Group by user_id, Users.name
    )
)
Where UserRank = 1
UNION
Select Moviename as Results
From (
    Select
        movie_id, Moviename, Rank() over (order by Avg_Ratings Desc, Moviename) As MoviesRank
    From (
        Select
            movie_id, Movies.title As Moviename, Avg(rating) As Avg_Ratings
        From
            Movie_Rating Inner Join Movies Using(movie_id)
        Where created_at between '2020-02-01' and '2020-02-29'
        Group by movie_id, Movies.title
    )
)
Where MoviesRank = 1