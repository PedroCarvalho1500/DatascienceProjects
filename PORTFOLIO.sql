-- SELECT * FROM Covid
-- WHERE continent IS NOT NULL
--  ORDER BY 1,2
 
 
-- SELECT * FROM Covid
-- WHERE continent IS NOT NULL AND total_deaths=3180238
-- ORDER BY 1,2
 
-- Shows likelihood of dying if you contract covid in your country
-- SELECT location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS DeathPercentage
-- FROM Covid 
-- WHERE location LIKE '%States%'
-- ORDER BY date

-- Looking at Total Cases vs Population
-- SELECT location, date, total_cases, population, ROUND((total_cases/population)*100,4) AS ContractPercentage
-- FROM Covid 
-- WHERE location LIKE '%States%'
-- ORDER BY date

-- Looking at Countries with Highest Infection Rate compared to Population
-- SELECT location, population, MAX(total_cases) AS HighestInfectionCount, ROUND(MAX((total_cases/population))*100,3) AS ContractPercentage
-- FROM Covid 

-- SELECT location, population, MAX(total_cases) AS HighestInfectionCount, MAX(total_cases/population)*100 AS PercentageInfected
-- FROM Covid 
-- GROUP BY location, population
-- ORDER BY PercentageInfected DESC

-- SELECT location, population, MAX(total_cases) AS HighestInfectionCount, MAX(total_cases/population)*100 AS PercentageInfected
-- FROM Covid 
-- GROUP BY location, population
-- ORDER BY PercentageInfected DESC

-- Showing Countries with Highest Death Count per Population
-- SELECT location, MAX(cast(total_deaths as float)) as TotalDeathCount
-- FROM Covid 
-- WHERE continent is not null and continent <> ''
-- GROUP BY location
-- ORDER BY TotalDeathCount DESC

-- LET'S BREAK THINGS DOWN BY CONTINENT
SELECT continent, MAX(cast(total_deaths as float)) as TotalDeathCount
FROM Covid 
WHERE continent is not null and continent <> ''
GROUP BY continent
ORDER BY TotalDeathCount DESC


SELECT location, MAX(cast(total_deaths as float)) as TotalDeathCount
FROM Covid 
WHERE continent is null OR continent = ''
GROUP BY location
ORDER BY TotalDeathCount DESC


-- Showing the continents with the highest death count per population
SELECT continent, MAX(cast(total_deaths as float)) as TotalDeathCount
FROM Covid 
WHERE continent is not null and continent <> ''
GROUP BY continent
ORDER BY TotalDeathCount DESC


-- GLOBAL NUMBERS
SELECT date, SUM(new_cases) as total_cases, SUM(cast(new_deaths as float)) as total_deaths, SUM(new_deaths)/SUM(new_cases)*100 as DeathPercentage
FROM Covid
WHERE continent is not null and continent <> ''
GROUP BY date
ORDER BY date


SELECT SUM(new_cases) as total_cases, SUM(cast(new_deaths as float)) as total_deaths, SUM(new_deaths)/SUM(new_cases)*100 as DeathPercentage
FROM Covid
WHERE continent is not null and continent <> ''
ORDER BY 1,2


-- TOTAL NEW CASES AND NEW DEATHS IN BRAZIL
SELECT location,SUM(new_cases) as total_cases, SUM(cast(new_deaths as float)) as total_deaths, SUM(new_deaths)/SUM(new_cases)*100 as DeathPercentage
FROM Covid
WHERE continent is not null and continent <> '' and location LIKE '%Brazil%'
GROUP BY location
ORDER BY 1,2

-- Looking at Total Population vs Vaccinations
-- SELECT * 
-- FROM Covid
-- INNER JOIN Vaccine
--      ON Covid.location = Vaccine.location
--      AND Covid.date = Vaccine.date
-- FROM Vaccine
-- FROM Covid


SELECT c.continent, c.location, c.date,c.population, v.new_vaccinations, 
SUM(cast(v.new_vaccinations as double)) OVER (PARTITION BY c.location ORDER BY c.location) AS RollingPeopleVaccinated,
(RollingPeopleVaccinated/population)*100
FROM Covid AS c
INNER JOIN Vaccine AS v
	ON c.location = v.location
    AND c.date = v.date
WHERE c.continent is not null
ORDER BY 2,3

-- USE CTE
WITH PopulationVsVaccination (Continent,Location,Date,Population,New_vaccinations,RollingPeopleVaccinated)
AS 
(
SELECT c.continent, c.location, c.date,c.population, v.new_vaccinations, 
SUM(cast(v.new_vaccinations as float)) OVER (PARTITION BY c.location ORDER BY c.location) AS RollingPeopleVaccinated
FROM Covid AS c
INNER JOIN Vaccine AS v
	ON c.location = v.location
    AND c.date = v.date
WHERE c.continent is not null
)
SELECT *, (RollingPeopleVaccinated/Population)*100
FROM PopulationVsVaccination
