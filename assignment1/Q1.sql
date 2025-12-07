select code, name, country_code, birth_date
from athletes
where country_code = 'CHN'
and disciplines like '%Table Tennis%'
order by name asc;
