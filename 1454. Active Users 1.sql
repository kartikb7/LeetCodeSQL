/* Write your PL/SQL query statement below */

Select
    Distinct a.id, name
From Logins a
    Inner Join Logins e
    ON a.login_date - e.login_date <= 4
    AND a.id = e.id
    Inner Join Accounts f
    ON a.id = f.id
Group by a.id, name
Having count(Distinct e.login_date) >= 4
Order by id