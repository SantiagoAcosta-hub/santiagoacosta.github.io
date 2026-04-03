CREATE OR REPLACE VIEW coviddeaths1.covid.relevant_vac AS(
   SELECT
    date,
   continent,
   location, 
   ROW_NUMBER() OVER (PARTITION BY location ORDER BY date DESC) AS latest_record
   FROM coviddeaths1.covid.vaccinations)

   SELECT *
   FROM coviddeaths1.covid.relevant_vac