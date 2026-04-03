CREATE OR REPLACE VIEW coviddeaths1.covid.deaths_vaccines AS(
  select d.continent,
d.country,
d.total_cases,
d.total_deaths,
v.people_vaccinated,
v.people_fully_vaccinated,
d.fatality_rate,
d.death_percent_pop,
d.percentage_infected,
d.population,
d.gdp_per_capita
from coviddeaths1.covid.analysis_data as d
left join coviddeaths1.covid.analysis_vac as v
on d.country = v.country
order by total_deaths DESC)
