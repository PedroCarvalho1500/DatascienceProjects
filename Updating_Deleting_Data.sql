-- database: /home/pedrossd/Desktop/ESTUDOS_QA/DATA_SCIENCE_PYTHON/SQLTutorial.bd

-- Use the ▷ button in the top right corner to run the entire file.
/*
Updating/Deleting Data
*/





UPDATE employeeDemographics
SET age = 36, gender = 'Male'
WHERE employeeDemographics.employeeID = 1013


DELETE FROM employeeDemographics
WHERE employeeID = 1014