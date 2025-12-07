select 
	'USA' as country_code,
	sum(case when m.medal_code = 1 then 1 else 0 end) as gold_medal,
	sum(case when m.medal_code = 2 then 1 else 0 end) as silver_medal,
	sum(case when m.medal_code = 3 then 1 else 0 end) as bronze_medal
from medals m
join athletes a on a.code = m.winner_code
where a.country_code = 'USA'
