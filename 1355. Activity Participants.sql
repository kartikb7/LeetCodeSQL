/* Write your PL/SQL query statement below */



WITH TempFreq AS
(Select Activity, Count(*) AS Freq
From
    Friends
Group By Activity
Order by 2)

Select Activity
From 
    TempFreq,
    (Select 
        Max(Freq) AS Max_Freq, Min(Freq) AS Min_Freq
    From TempFreq) b
Where    
    Freq > Min_Freq
    AND Freq < Max_Freq