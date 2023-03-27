select * from [Athletes Dataset].[games].[Athletes_summer_games]

--alter table [Athletes Dataset].[games].[Athletes_summer_games]
--drop column Event

-- Q1 : What is Average of age in each Sport ?
select Sport , AVG(Age) as 'AVG of Age'
from [Athletes Dataset].[games].[Athletes_summer_games]
group by Sport

-- Q2 : Which year and city had most female or male ?
select Year , City , Gender , Count(Gender) as 'Count Gender'
from [Athletes Dataset].[games].[Athletes_summer_games]
group by Year , City , Gender
order by City , Year desc

-- Q3 : Which city had most plays ?
select City , Count(City) as 'Count City'
from [Athletes Dataset].[games].[Athletes_summer_games]
group by City
order by Count(City) desc


