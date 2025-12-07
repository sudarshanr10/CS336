select code as athlete_id, name as athlete_name, country_code, birth_date
from athletes
order by birth_date desc, athlete_id asc
limit 20;
