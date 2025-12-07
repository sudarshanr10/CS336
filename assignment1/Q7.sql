with country_medals as (
	select
		coalesce(a.country_code, t.country_code) as country_code,
		m.medal_code,
		m.discipline,
		m.event
	from medals m
	left join athletes a on a.code = m.winner_code
	left join teams t on t.code = m.winner_code
),
distinct_medals as (
	select distinct country_code, medal_code, discipline, event
	from country_medals
)
select
	country_code,
	sum(case when medal_code = 1 then 1 else 0 end) as gold_medal,
	sum(case when medal_code = 2 then 1 else 0 end) as silver_medal,
	sum(case when medal_code = 3 then 1 else 0 end) as bronze_medal
from distinct_medals
group by country_code
order by gold_medal desc, silver_medal desc, bronze_medal desc
LIMIT 10;
