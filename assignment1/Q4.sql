select a.name, a.country_code, m.medal_code, m.event
from medals m
join athletes a on a.code = m.winner_code
where a.country_code = 'USA' and m.medal_code = 1
order by a.name asc;
