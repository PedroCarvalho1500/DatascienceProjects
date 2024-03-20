-- database: /home/pedrossd/Desktop/ESTUDOS_QA/DATA_SCIENCE_PYTHON/SQLTutorial.bd

-- Use the ▷ button in the top right corner to run the entire file.

/*
INNER JOINS, FULL/LEFT/RIGHT OUTER JOINS 
YOU HAVE TO DO A JOIN BASED ON A SIMILAR COLUMNS
*/


-- SELECT * FROM employeeDemographics
-- INNER JOIN employeeSalary
--      ON employeeDemographics.employeeID = employeeSalary.employeeID

SELECT * FROM employeeDemographics
FULL OUTER JOIN employeeSalary
     ON employeeDemographics.employeeID = employeeSalary.employeeID

-- SELECT * FROM employeeDemographics
-- LEFT OUTER JOIN employeeSalary
--      ON employeeDemographics.employeeID = employeeSalary.employeeID