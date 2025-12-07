select
	code as country_code,
	(population * "GDP ($ per capita)") as total_gdp,
	rank() over (order by (population * "GDP ($ per capita)") desc) as gdp_rank
from countries
where population is not null and "GDP ($ per capita)" is not null
order by total_gdp desc
limit 10;
