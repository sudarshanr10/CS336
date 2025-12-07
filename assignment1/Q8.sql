with swimmer as (
	select a.name, a.country_code, m.event
	from medals m
	join athletes a on a.code = m.winner_code
	where m.discipline = 'Swimming'
),
swim_team as (
	select a.name, a.country_code, m.event
	from medals m
	join teams t on t.code = m.winner_code
	join athletes a on a.code = t.athletes_code
	where m.discipline = 'Swimming'
),
total_swim as (
	select * from swimmer
	union all
	select * from swim_team
)
select
	name as athlete_name,
	country_code,
	count(*) as total_medals
from total_swim as total_swim_medals
group by athlete_name, country_code
having count(*) >= 3
order by total_medals desc, athlete_name asc;
