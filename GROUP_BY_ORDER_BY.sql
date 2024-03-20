-- database: /home/pedrossd/Desktop/ESTUDOS_QA/DATA_SCIENCE_PYTHON/SQLTutorial.bd

-- Use the ▷ button in the top right corner to run the entire file.

-- SELECT gender, count(gender)
-- FROM employeeDemographics
-- GROUP BY gender

-- SELECT gender, age, CountGender(gender)
-- FROM employeeDemographics
-- GROUP BY gender,age

-- SELECT gender, COUNT(gender) AS countGender
-- FROM employeeDemographics
-- WHERE age > 31
-- GROUP BY gender
-- ORDER BY gender DESC

--IF WE HAVE TWO EQUAL AGES, IT WILL BE ORDERED PUTTING MALE FIRST BECAUSE IT'S DESCENDANT
SELECT *
FROM employeeDemographics
ORDER BY age,gender DESC