with shooting as (
	select 
		participant_code,
		count(distinct event_name) as event_count
	from results
	where discipline_name = 'Shooting' and participant_type = 'Person'
	group by participant_code
)
select
	round(100.0 * count(*) filter (where s.event_count > 1) / nullif(count(*), 0), 2) as percentage
from shooting s;
