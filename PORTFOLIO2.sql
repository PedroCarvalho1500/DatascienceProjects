-- Creating View to store data for later visualizations
CREATE VIEW PercentPopulationVaccinated
AS
SELECT c.continent, c.location, c.date,c.population, v.new_vaccinations, 
SUM(cast(v.new_vaccinations as float)) OVER (PARTITION BY c.location ORDER BY c.location) AS RollingPeopleVaccinated
FROM Covid AS c
INNER JOIN Vaccine AS v
	ON c.location = v.location
    AND c.date = v.date
WHERE c.continent is not null


SELECT * FROM PercentPopulationVaccinated


CREATE VIEW ContinentsHighestDeaths AS
SELECT continent, MAX(cast(total_deaths as float)) as TotalDeathCount
FROM Covid 
WHERE continent is not null and continent <> ''
GROUP BY continent
ORDER BY TotalDeathCount DESC


CREATE VIEW NEW_CASES_DEATHS_IN_BRAZIL AS
-- TOTAL NEW CASES AND NEW DEATHS IN BRAZIL
SELECT location,SUM(new_cases) as total_cases, SUM(cast(new_deaths as float)) as total_deaths, SUM(new_deaths)/SUM(new_cases)*100 as DeathPercentage
FROM Covid
WHERE continent is not null and continent <> '' and location LIKE '%Brazil%'
GROUP BY location
ORDER BY 1,2


CREATE VIEW COUNTRIES_HIGHEST_INFECTION_RATE_VS_POPULATION AS
-- Looking at Countries with Highest Infection Rate compared to Population
SELECT location, population, MAX(total_cases) AS HighestInfectionCount, ROUND(MAX((total_cases/population))*100,3) AS ContractPercentage
FROM Covid
GROUP BY location, population
ORDER BY population DESC