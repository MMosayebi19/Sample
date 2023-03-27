select * from [Athletes Dataset].[games].[Athletes_summer_games]

select * from [Athletes Dataset].[games].[Athletes_winter_games]

select * from [Athletes Dataset].[games].[regions]

-- Q1 : Number of sports in per season
-- first : winter
select Season , count(Sport) as 'Number of sports'
from [Athletes Dataset].[games].[Athletes_winter_games]
group by Season 
--
select Season , Sport ,count(Sport) as 'Number of sports'
from [Athletes Dataset].[games].[Athletes_winter_games]
group by Season , Sport
-- second : summer
select Season , count(Sport) as 'Number of sports'
from [Athletes Dataset].[games].[Athletes_summer_games]
group by Season 
--
select Season , Sport ,count(Sport) as 'Number of sports'
from [Athletes Dataset].[games].[Athletes_summer_games]
group by Season , Sport
