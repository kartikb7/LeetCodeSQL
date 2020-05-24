/* Write your PL/SQL query statement below */
Select
    id,
    Sum(Case month 
            When 'Jan' Then Revenue
            End) AS "Jan_Revenue",
    Sum(Case month 
            When 'Feb' Then Revenue
            End) AS "Feb_Revenue",
    Sum(Case month 
            When 'Mar' Then Revenue
            End) AS "Mar_Revenue",
    Sum(Case month 
            When 'Apr' Then Revenue
            End) AS "Apr_Revenue",
    Sum(Case month 
            When 'May' Then Revenue
            End) AS "May_Revenue",
    Sum(Case month 
            When 'Jun' Then Revenue
            End) AS "Jun_Revenue",
    Sum(Case month 
            When 'Jul' Then Revenue
            End) AS "Jul_Revenue",
    Sum(Case month 
            When 'Aug' Then Revenue
            End) AS "Aug_Revenue",
    Sum(Case month 
            When 'Sep' Then Revenue
            End) AS "Sep_Revenue",
    Sum(Case month 
            When 'Oct' Then Revenue
            End) AS "Oct_Revenue",
    Sum(Case month 
            When 'Nov' Then Revenue
            End) AS "Nov_Revenue",
    Sum(Case month 
            When 'Dec' Then Revenue
            End) AS "Dec_Revenue"
From
    Department
Group by id