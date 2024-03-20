-- database: /home/pedrossd/Desktop/ESTUDOS_QA/DATA_SCIENCE_PYTHON/SQLTutorial.bd

-- Use the ▷ button in the top right corner to run the entire file.
/*
String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower
*/


CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

-- INSERT INTO EmployeeErrors Values 
-- ('1001  ', 'Jimbo', 'Halbert')
-- ,('  1002', 'Pamela', 'Beasely')
-- ,('1005', 'TOby', 'Flenderson - Fired')

-- Select *
-- From EmployeeErrors

-- -- Using Trim, LTRIM, RTRIM

-- Select EmployeeID, TRIM(employeeID) AS IDTRIM
-- FROM EmployeeErrors 

-- Select EmployeeID, RTRIM(employeeID) as IDRTRIM
-- FROM EmployeeErrors 

-- Select EmployeeID, LTRIM(employeeID) as IDLTRIM
-- FROM EmployeeErrors 

-- SELECT EmployeeErrors.LastName, REPLACE(LastName, '- Fired','') as lastNameFixed
-- FROM EmployeeErrors

-- SELECT substring(FirstName,1,3)
-- FROM EmployeeErrors


SELECT EmployeeErrors.FirstName, employeeDemographics.firstName
FROM EmployeeErrors
JOIN employeeDemographics
     ON substring(EmployeeErrors.firstName,1,3) = substring(employeeDemographics.firstName,1,3)