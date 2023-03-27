select * from [Athletes Dataset].[games].[Athletes_winter_games]

--alter table [Athletes Dataset].[games].[Athletes_winter_games]
--alter column Age float

-- Q1 : Average of Ages in each Sport
select Sport , avg(Age) as 'AVG Ages'
from [Athletes Dataset].[games].[Athletes_winter_games]
group by Sport

-- Q2 : Number of Paricipants
select Year , Gender , City ,COUNT(Gender) as 'Count Gender'
from [Athletes Dataset].[games].[Athletes_winter_games]
group by Year , Gender , City
order by Year desc , City

-- Q3 : Number of games per city
select City , COUNT(Sport) as 'Count Sport'
from [Athletes Dataset].[games].[Athletes_winter_games]
group by City