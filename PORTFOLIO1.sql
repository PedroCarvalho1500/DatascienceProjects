-- database: /home/pedrossd/Desktop/ESTUDOS_QA/DATA_SCIENCE_PYTHON/PortfolioProject.db

-- Use the ▷ button in the top right corner to run the entire file.

-- SELECT * FROM Covid
-- ORDER BY 3,4

-- SELECT * FROM Vaccine
-- ORDER BY 3,4

-- Select Data that we are going to be using
-- SELECT location,date, total_cases, new_cases, total_deaths, population
-- FROM Covid
-- ORDER BY 1,2


-- Looking at Total Cases vs Total Deaths
SELECT location, total_cases, total_deaths, population, ((100*total_deaths)/total_cases) AS DEATH_PERCENTAGE
FROM Covid
ORDER BY 1,2