-- database: /home/pedrossd/Desktop/ESTUDOS_QA/DATA_SCIENCE_PYTHON/SQLTutorial.bd

-- Use the ▷ button in the top right corner to run the entire file.
/*
Aliasing
*/


SELECT concat(firstName,' ',lastName) AS FullName
FROM employeeDemographics


SELECT avg(age)
FROM employeeDemographics

SELECT Demo.employeeID
FROM employeeDemographics AS Demo
JOIN employeeSalary AS Sal
     ON Demo.employeeID = Sal.employeeID


SELECT Demo.employeeID, Demo.firstName, Sal.jobTitle, Ware.age
FROM employeeDemographics AS Demo
LEFT JOIN employeeSalary AS Sal
     ON Demo.employeeID = Sal.employeeID
LEFT JOIN wareHouseEmployeeDemographics as Ware
     ON Demo.employeeID = Ware.employeeID