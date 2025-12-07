select distinct t.code as team_code, t.country_code, m.medal_code, m.event
from medals m
join teams t on t.code = m.winner_code
where t.country_code = 'USA' and m.medal_code = 1
order by t.code asc;
