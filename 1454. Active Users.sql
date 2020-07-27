/* Write your PL/SQL query statement below */

Select
    Distinct a.id, name
From Logins a
    Inner Join Logins b
    ON a.login_date - b.login_date = 1
    AND a.id = b.id
    Inner Join Logins c
    ON a.login_date - c.login_date = 2
    AND a.id = c.id
    Inner Join Logins d
    ON a.login_date - d.login_date = 3
    AND a.id = d.id
    Inner Join Logins e
    ON a.login_date - e.login_date = 4
    AND a.id = e.id
    Inner Join Accounts f
    ON a.id = f.id
Order by id
