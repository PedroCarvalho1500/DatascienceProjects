-- database: /home/pedrossd/Desktop/ESTUDOS_QA/DATA_SCIENCE_PYTHON/SQLTutorial.bd

-- Use the ▷ button in the top right corner to run the entire file.

/*
Where Statement
=, <>, <, >, And, Or, Like, Null, Not Null, In
*/

-- SELECT *
-- FROM employeeDemographics
-- WHERE age > 30


-- SELECT *
-- FROM employeeDemographics
-- WHERE age >= 30


-- SELECT *
-- FROM employeeDemographics
-- WHERE age <> 32

-- SELECT *
-- FROM employeeDemographics
-- WHERE age <= 32 AND gender = 'Male'

-- SELECT *
-- FROM employeeDemographics
-- WHERE lastName LIKE 'S%'

-- SELECT *
-- FROM employeeDemographics
-- WHERE lastName LIKE '%S%'

-- SELECT *
-- FROM employeeDemographics
-- WHERE lastName LIKE 'S%c%ott%'

-- SELECT *
-- FROM employeeDemographics
-- WHERE lastName LIKE 'S%c%'

-- SELECT *
-- FROM employeeDemographics
-- WHERE firstName is NULL


-- SELECT *
-- FROM employeeDemographics
-- WHERE firstName is NOT NULL


SELECT *
FROM employeeDemographics
WHERE firstName IN ('Jim', 'Michael', 'James')