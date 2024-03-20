-- database: /home/pedrossd/Desktop/ESTUDOS_QA/DATA_SCIENCE_PYTHON/SQLTutorial.bd

-- Use the ▷ button in the top right corner to run the entire file.
/*
UNION, UNION_ALL
*/
-- SELECT * FROM employeeDemographics
-- UNION 
-- SELECT * 
-- FROM wareHouseEmployeeDemographics

-- INSERT INTO wareHouseEmployeeDemographics VALUES
-- (1013, 'Darryl', 'Philbin', NULL, 'Male'),
-- (1050, 'Roy', 'Anderson', 31, 'Male'),
-- (1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
-- (1052, 'Val', 'Johnson', 31, 'Female')


SELECT * FROM employeeDemographics
UNION ALL
SELECT * 
FROM wareHouseEmployeeDemographics
ORDER BY employeeID