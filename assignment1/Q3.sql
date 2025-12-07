select country_code, gold_medal, silver_medal
from tokyo_medals
where gold_medal > silver_medal
order by gold_medal desc, silver_medal desc, country_code asc;
